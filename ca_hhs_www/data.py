
import io
import re
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

def main():
    context = dict()
    context.update(top_list_data())
    return context


def top_list_data():
    context = dict()
    context.update(chargemasters_top_data())
    context.update(catalog_top_data())
    return context


def chargemasters_top_data():
    results = dict()

    rows = db_exec(conn, "select distinct(year) from chargemasters_files order by year")
    results['years'] = [r['year'] for r in rows]

    sql = "select distinct(substr(directory,6,1)) as initial from chargemasters_dirs order by initial;"
    rows = db_exec(conn, sql)
    results['initials'] = [r['initial'] for r in rows]

    return results


def catalog_top_data():
    results = dict()
    results['catalog_count'] = db_exec(conn, "select count(0) as count from catalog")[0]['count']
    return results


def catalog_main():
    context = dict()
    datasets = list()
    for row in db_exec(conn, "select * from catalog"):
        datasets.append(catalog_fixes(row))
    context['datasets'] = datasets
    return context


def catalog_fixes(row):
    row['created'] = row['created'][:10]
    row['last_updated'] = row['last_updated'][:10]
    row['tags'] = row['tags'].replace(',', ', ')
    return row


def catalog_detail(id_num):
    context = dict()
    sql = f"select * from catalog where _id = {id_num}"
    dataset = db_exec(conn, sql)
    context['dataset'] = catalog_fixes(dataset[0])
    context['id'] = id_num
    return context


def catalog_next(id_num):
    next_id = db_exec(conn, f"select _id from catalog where _id > {id_num} order by _id limit 1")
    if not next_id or len(next_id) == 0:
        return None
    else:
        return next_id[0]['_id']


def catalog_prev(id_num):
    prev_id = db_exec(conn, f"select _id from catalog where _id < {id_num} order by _id desc limit 1")
    if not prev_id or len(prev_id) == 0:
        return None
    else:
        return prev_id[0]['_id']


def chargemasters_main(year):
    context = dict()
    context.update(top_list_data())

    context['year'] = year

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
    context.update(top_list_data())

    context['initial'] = initial


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


def chargemasters_years():
    context = dict()
    context.update(top_list_data())

    sql = "select year, full_name, hcai_id from chargemasters_files"
    rows = db_exec(conn, sql)

    found = dict()

    for row in rows:

        id = row['hcai_id']

        if id not in found:
            found[id] = dict()
            found[id]['name'] = row['full_name'].split('/')[1]
            found[id]['years'] = list()

        found[id]['years'].append(str(row['year']))

    for id in found:
        found[id]['years'] = sorted(list(set(found[id]['years'])))

    # print(f"found: {found}")

    context['ids'] = found

    return context


def chargemasters_hcai_ids():
    context = dict()
    context.update(top_list_data())

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

def shorter(s):
    parts = str(s).split('.')
    first = parts[0]
    second = parts[1][0:4]
    return f"{first}.{second}"


def chargemasters_hcai_id(id):
    context = dict()
    context.update(top_list_data())

    context['id'] = id

    sql = f"select full_name from chargemasters_files where hcai_id = '{id}'"
    context['files'] = [r['full_name'] for r in db_exec(conn, sql)]

    sql = f"select * from healthcare_facilities where hcai_id = '{id}'"
    rows = db_exec(conn, sql)
    strm = io.StringIO()
    pprint(rows, stream=strm, sort_dicts=False)

    context['fac_data'] = strm.getvalue()

    context['location'] = f"{rows[0]['latitude']},{rows[0]['longitude']}"

    # https://www.openstreetmap.org/search?query=34.68935389%2C-118.15856172o
    # https://www.openstreetmap.org/search?query=34.68935389%2C-118.15856172#map=10/34.6894/-118.1586

    long = rows[0]['longitude']
    lat = rows[0]['latitude']
    s_long = shorter(long)
    s_lat = shorter(lat)

    context['location_url'] = f"https://www.openstreetmap.org/search?query={lat}%2C{long}#10/{s_lat}/{s_long}"

    return context

def chargemasters_no_hcai_id():
    context = dict()
    context.update(top_list_data())

    context['files'] = db_exec(conn, "select * from chargemasters_files where hcai_id is NULL order by full_name")
    context['count'] = len(context['files'])

    return context


def chargemasters_changes():

    context = dict()
    context.update(top_list_data())

    return context

def chargemasters_calc_changes(s):

    found = list()

    for line in s.split('\n'):
        done = False

        offset = 0
        while not done:
            r1 = re.search(r'\([a-z0-9\-]+\):', line[offset:])
            if r1 is None:
                done = True
            else:
                found.append(line[offset+r1.start():offset+r1.end()][1:][:-2])
                offset += r1.end()

    found = list(set(found))

    return found

def table_info():
    context = dict()
    rows = db_exec(conn, "show tables")
    table_names = dict()
    columns = dict()

    for row in rows:
        table_names[row[0]] = dict()

    for table in table_names:
        rows = [dict(r) for r in db_exec(conn, f"desc {table}")]
        for row in rows:
            col_name = row['Field']
            if col_name not in columns:
                columns[col_name] = dict()
            columns[col_name][table] = row['Type']

    context['columns'] = columns
    context['names'] = sorted(list(columns.keys()))

    return context

