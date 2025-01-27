
import os
import traceback

from sqlalchemy import create_engine

import config
import sql_helper

cfg = config.cfg()

metadb = create_engine(f"mysql+pymysql://{cfg['META_USR']}:{cfg['META_PWD']}@{cfg['META_HOST']}/{cfg['META_DB']}")
conn = metadb.connect()


def db_exec(eng, this_sql):
    return sql_helper.db_exec(metadb, this_sql)


if __name__ == '__main__':

    ds_name = os.getcwd().split('/')[-1]
    # print(f"ds_name: {ds_name}")

    sql = f"select pk from datasets where name = '{ds_name}'"
    ds_pk = db_exec(metadb, sql)[0]['pk']
    # print(f"ds_pk: {ds_pk}")

    files = set(os.listdir('./sources'))
    # print(f"files: {files}")

    sql = f"select distinct(file_name) from sources where ds_pk = {ds_pk}"
    stored = set([r['file_name'] for r in db_exec(metadb, sql)])
    # print(f"stored: {stored}")

    extra = files - stored
    if len(extra) > 0:
        print(f"extra ({len(extra)}): {extra}")
    else:
        print("extra (0)")

    missing = stored - files
    if len(missing) > 0:
        print(f"missing ({len(missing)}): {missing}")
    else:
        print("missing (0):")

    for f_name in missing:
        sql = f"update sources set missing = unix_timestamp() where ds_pk = {ds_pk} and file_name = '{f_name}'"
        # print(f"sql: {sql}")
        db_exec(metadb, sql)

    for f_name in extra:
        sql = f"insert into sources (ds_pk, file_name) values ({ds_pk}, '{f_name}')"
        # print(f"sql: {sql}")
        db_exec(metadb, sql)

