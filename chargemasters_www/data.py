
from dotenv import dotenv_values
from flask import request
from sqlalchemy import create_engine, inspect

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


def chargemasters_main(year):
    context = dict()

    context['year'] = year

    sql = f"""
          select * from chargemasters_files f1, chargemasters_common25 c1
          where f1.pk = c1.file_pk and f1.year = {year}"""

    rows = db_exec(conn, sql)

    context['all_count'] = len(rows)

    next_rows = dict()

    for row in rows:
        pk = row['pk']

        if pk not in next_rows:
            next_rows[pk] = dict()
            next_rows[pk]['pk'] = pk
            next_rows[pk]['full_name'] = row['full_name']
            next_rows[pk]['hcai_id'] = row['hcai_id']
            next_rows[pk]['count'] = 1

            if row['hcai_id'] is not None:
                sql = f"select * from healthcare_facilities where hcai_id = {row['hcai_id']}"
                facilities = db_exec(conn, sql)
                if len(facilities) > 0:
                    next_rows[pk]['facilities'] = facilities
        else:
            next_rows[pk]['count'] += 1

    context['files'] = list(next_rows.values())
    return context


def chargemasters_main_noC25(year):
    context = dict()

    context['year'] = year

    next_rows = list()

    sql = f"select * from chargemasters_files where file_type in ('Common25', 'CDM') and year = {year}"

    rows = db_exec(conn, sql)

    context['all_count'] = len(rows)

    for row in rows:
        next_rows.append(dict())
        next_rows[-1]['pk'] = row['pk']
        next_rows[-1]['full_name'] = row['full_name']
        next_rows[-1]['hcai_id'] = row['hcai_id']

        if row['hcai_id'] is not None:
            sql = f"select * from healthcare_facilities where hcai_id = {row['hcai_id']}"
            facilities = db_exec(conn, sql)
            if len(facilities) > 0:
                next_rows[-1]['facilities'] = facilities

    context['files'] = next_rows

    return context
