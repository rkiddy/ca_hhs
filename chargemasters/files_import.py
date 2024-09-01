
import re
import sys

from dotenv import dotenv_values
from sqlalchemy import create_engine, inspect

sys.path.append('..')

import config

cfg = dotenv_values(".env")

con_engine = create_engine(
    f"mysql+pymysql://{cfg['USR']}:{cfg['PWD']}@{cfg['HOST']}/{cfg['DB']}"
)
conn = con_engine.connect()


def db_exec(engine, sql):
    # print(f"sql: {sql}")
    if sql.strip().startswith("select"):
        return [dict(r) for r in engine.execute(sql).fetchall()]
    else:
        return engine.execute(sql)


def fetch_max_pk(table):
    sql = f"select max(pk) as pk from {table}"
    result = db_exec(conn, sql)[0]['pk']
    if result is None:
        return 0
    else:
        return result


def fix(start):
    if not start:
        return 'NULL'
    else:
        start = start.replace("'", "''").replace('%', '%%')
        return f"'{start}'"


if __name__ == '__main__':

    # add directories
    #
    dirs = list()
    sql = "select full_name from chargemasters_files where dir_pk is NULL"
    for row in db_exec(conn, sql):
        # print(f"full_name: {row['full_name']}")
        parts = row['full_name'].split('/')
        dir = '/'.join(parts[:-1])
        # print(f"    dir: {dir}")
        dirs.append(dir)

    rows = db_exec(conn, "select full_name from chargemasters_dirs")
    existing = [r['full_name'] for r in rows]

    # print(f"existing: {existing}")

    next_dirs = list()
    for dir in dirs:
        if dir not in existing:
            next_dirs.append(dir)

    next_dirs = list(set(next_dirs))

    print(f"to add dirs # {len(next_dirs)}")

    pk = fetch_max_pk("chargemasters_dirs")

    dirs_added = 0

    for dir in next_dirs:
        pk += 1
        year = int(dir[:4])
        sql = f"insert into chargemasters_dirs (pk, full_name, year) values ({pk}, {fix(dir)}, {year})"
        # print(f"sql: {sql}")
        db_exec(conn, sql)
        dirs_added += 1

    print(f"dirs added # {dirs_added}")

    # connect dirs and files and add oshpd_id values
    #
    updated = 0
    sql = "select pk, dir_pk, full_name, oshpd_id from chargemasters_files where dir_pk is NULL or oshpd_id is NULL"
    for row in db_exec(conn, sql):
        parts = row['full_name'].split('/')
        dir = '/'.join(parts[:-1])
        oshpd_id = parts[-1][:9]
        pk = row['pk']

        sql = f"select pk from chargemasters_dirs where full_name = {fix(dir)}"
        dir_pk = db_exec(conn, sql)[0]['pk']

        if row['dir_pk'] is None:
            db_exec(conn, f"update chargemasters_files set dir_pk = {dir_pk} where pk = {pk}")

        if re.match(r'^[0-9]{9}$', oshpd_id):
            #print(f"oshpd_id: {oshpd_id}, row: {row}")
            db_exec(conn, f"update chargemasters_files set oshpd_id = {fix(oshpd_id)} where pk = {pk}")
            db_exec(conn, f"update chargemasters_dirs set oshpd_id = {fix(oshpd_id)} where pk = {dir_pk}")
            updated += 1
        else:
            print(f"skipping BAD oshpd_id: {oshpd_id}, row: {row}")

    print(f"rows updated with oshpd_id # {updated}")

    # check whether dirs have only one oshpd_id.
    #
    sql = f"""update chargemasters_files f1, chargemasters_dirs d1
              set d1.oshpd_id = f1.oshpd_id where f1.dir_pk = d1.pk and d1.oshpd_id is NULL"""
    db_exec(conn, sql)

