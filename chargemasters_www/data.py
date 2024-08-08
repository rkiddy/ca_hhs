
import io
from pprint import pprint

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

    rows = db_exec(conn, "select distinct(year) from chargemasters_files order by year")
    context['years'] = [r['year'] for r in rows]

    sql = "select distinct(substr(directory,6,1)) as initial from chargemasters_dirs order by initial;"
    rows = db_exec(conn, sql)
    context['initials'] = [r['initial'] for r in rows]

    if year is None:
        return context

    sql = f"""
          select * from chargemasters_files f1 left join chargemasters_common25 c1 on f1.pk = c1.file_pk
          where f1.year = {year}"""
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


def name_from_directory(dir):
    dir = dir[5:]
    dir = dir.replace('- ', '-').replace(' -', '-')
    dir = dir.replace('-', ' - ')
    return dir


def chargemasters_facilities(initial):
    context = dict()

    context['initial'] = initial

    rows = db_exec(conn, "select distinct(year) from chargemasters_files order by year")
    context['years'] = [r['year'] for r in rows]

    sql = "select distinct(substr(directory,6,1)) as initial from chargemasters_dirs order by initial;"
    rows = db_exec(conn, sql)
    context['initials'] = [r['initial'] for r in rows]

    sql = f"select * from chargemasters_dirs where substr(directory,6,1) = '{initial}'"
    print(f"sql: {sql}")
    dir_rows = db_exec(conn, sql)

    dpks = ', '.join([str(r['pk']) for r in dir_rows])

    sql = f"select * from chargemasters_dir_hcai_id_joins where dir_pk in ({dpks})"
    id_rows = db_exec(conn, sql)
    print(f"id_rows #: {len(id_rows)}")
 
    found = dict()

    for d_row in dir_rows:
        name = name_from_directory(d_row['directory'])
        if name not in found:
            found[name] = dict()
            found[name]['d_pk'] = list()
            found[name]['hcai_ids'] = list()

        found[name]['d_pk'].append(d_row['pk'])

        for i_row in id_rows:
            if i_row['dir_pk'] == d_row['pk']:
                found[name]['hcai_ids'].append(i_row['hcai_id'])

        for name in found:
            found[name]['hcai_ids'] = sorted(list(set(found[name]['hcai_ids'])))

    context['names'] = found

    # {'Aurora Vista Del Mar Hospital' = {'d_pk': [4617, 4165, 3825], 'hcai_ids': ['106301098']},
    #  'Aurora San Diego': {'d_pk': [4616, 4164, 3824], 'hcai_ids': ['106010739']},
    #  'Aurora Las Encinas Hospital': {'d_pk': [4615, 4163, 3823], 'hcai_ids': ['106364231']}}

    return context


def chargemasters_hcai_ids():

    context = dict()
 
    rows = db_exec(conn, "select distinct(year) from chargemasters_files order by year")
    context['years'] = [r['year'] for r in rows]
 
    sql = "select distinct(substr(directory,6,1)) as initial from chargemasters_dirs order by initial;"
    rows = db_exec(conn, sql)
    context['initials'] = [r['initial'] for r in rows]
 
    sql = f"select * from chargemasters_dirs"
    print(f"sql: {sql}")
    dir_rows = db_exec(conn, sql)
    dpks = ', '.join([str(r['pk']) for r in dir_rows])

    sql = f"select * from chargemasters_dir_hcai_id_joins where dir_pk in ({dpks})"
    id_rows = db_exec(conn, sql)
    print(f"id_rows #: {len(id_rows)}")

    file_rows = db_exec(conn, "select * from chargemasters_files")

    found = dict()

    for i_row in id_rows:
        id = i_row['hcai_id']

        if id not in found:
            found[id] = dict()
            found[id]['d_pk'] = list()
            found[id]['names'] = list()
            found[id]['files'] = list()

        found[id]['d_pk'].append(i_row['dir_pk'])

        for d_row in dir_rows:
            if d_row['pk'] in found[id]['d_pk']:
                found[id]['names'].append(name_from_directory(d_row['directory']))

        for f_row in file_rows:
            if f_row['dir_pk'] in found[id]['d_pk']:
                found[id]['files'].append(f_row['full_name'])

    for id in found:
        found[id]['names'] = list(set(found[id]['names']))
        found[id]['files'] = sorted(list(set(found[id]['files'])))

    context['ids'] = found
 
    return context


def chargemasters_hcai_id(id):
    context = dict()

    context['id'] = id

    rows = db_exec(conn, "select distinct(year) from chargemasters_files order by year")
    context['years'] = [r['year'] for r in rows]
 
    sql = "select distinct(substr(directory,6,1)) as initial from chargemasters_dirs order by initial;"
    rows = db_exec(conn, sql)
    context['initials'] = [r['initial'] for r in rows]

    sql = f"select full_name from chargemasters_files where hcai_id = '{id}'"
    context['files'] = [r['full_name'] for r in db_exec(conn, sql)]

    sql = f"select * from healthcare_facilities where hcai_id = '{id}'"
    rows = db_exec(conn, sql)
    strm = io.StringIO()
    pprint(rows, stream=strm, sort_dicts=False)

    context['fac_data'] = strm.getvalue()

    return context

