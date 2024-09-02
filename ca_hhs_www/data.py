
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


def county_names():
    rows = db_exec(conn, "select dhcs_county_code, county_name from dhcs_county_code_references")
    found = dict()
    for row in rows:
        found[row['dhcs_county_code']] = row['county_name']
    return found


def osm_url(lat, long):
    return f"https://www.openstreetmap.org/search?query={lat}/{long}"


def fix_int(start):
    if start is None:
        return 'NULL'
    else:
        return str(start).replace(',', '')


def fix(start):
    if start is None:
       return 'NULL'
    else:
       return start.replace("'", "''").replace('%', '%%')


def top_list_data():
    context = dict()
    context.update(chargemasters_top_data())
    context.update(catalog_top_data())
    return context


def chargemasters_top_data():
    results = dict()

    rows = db_exec(conn, "select distinct(year) from chargemasters_files order by year")
    results['years'] = [r['year'] for r in rows]

    sql = "select distinct(substr(full_name,6,1)) as initial from chargemasters_dirs order by initial;"
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
    context = top_list_data()

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
            next_rows[pk]['oshpd_id'] = row['oshpd_id']
            next_rows[pk]['count'] = 1

            if row['oshpd_id'] is not None:
                sql = f"select * from healthcare_facilities where oshpd_id = {row['oshpd_id']}"
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
    context = top_list_data()

    context['initial'] = initial


    sql = f"select * from chargemasters_dirs where substr(full_name,6,1) = '{initial}'"
    print(f"sql: {sql}")
    dir_rows = db_exec(conn, sql)

    dpks = ', '.join([str(r['pk']) for r in dir_rows])

    raise Exception("no table: chargemasters_dir_oshpd_id_joins")
    sql = f"select * from chargemasters_dir_oshpd_id_joins where dir_pk in ({dpks})"
    id_rows = db_exec(conn, sql)
    print(f"id_rows #: {len(id_rows)}")

    found = dict()

    for d_row in dir_rows:
        name = name_from_directory(d_row['full_name'])
        if name not in found:
            found[name] = dict()
            found[name]['d_pk'] = list()
            found[name]['oshpd_ids'] = list()

        found[name]['d_pk'].append(d_row['pk'])

        for i_row in id_rows:
            if i_row['dir_pk'] == d_row['pk']:
                found[name]['oshpd_ids'].append(i_row['oshpd_id'])

        for name in found:
            found[name]['oshpd_ids'] = sorted(list(set(found[name]['oshpd_ids'])))

    context['names'] = found

    # {'Aurora Vista Del Mar Hospital' = {'d_pk': [4617, 4165, 3825], 'oshpd_ids': ['106301098']},
    #  'Aurora San Diego': {'d_pk': [4616, 4164, 3824], 'oshpd_ids': ['106010739']},
    #  'Aurora Las Encinas Hospital': {'d_pk': [4615, 4163, 3823], 'oshpd_ids': ['106364231']}}

    return context


def chargemasters_years():
    context = top_list_data()

    sql = "select year, full_name, oshpd_id from chargemasters_files"
    rows = db_exec(conn, sql)

    found = dict()

    for row in rows:

        id = row['oshpd_id']

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

chargemasters_years_expected = ['2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019', '2020', '2121', '2022', '2023', '2024']

def chargemasters_oshpd_ids():
    context = top_list_data()

    found = dict()

    sql = f"select * from chargemasters_dirs"
    # print(f"sql: {sql}")
    for row in db_exec(conn, sql):
        id = row['oshpd_id']
        year = row['year']
        parts = row['full_name'].split('/')
        dir = '/'.join(parts[1:])

        if id not in found:
            found[id] = dict()
            found[id]['names'] = list()
            found[id]['years'] = list()

        found[id]['names'].append(dir)
        found[id]['years'].append(str(year))

    for id in found:
        found[id]['names'] = list(set(found[id]['names']))
        found[id]['missing'] = list()
        for yr in chargemasters_years_expected:
            if yr not in found[id]['years']:
                found[id]['missing'].append(yr)

    context['ids'] = found

    return context


def shorter(s):
    parts = str(s).split('.')
    first = parts[0]
    second = parts[1][0:4]
    return f"{first}.{second}"


def chargemasters_oshpd_id(id):
    context = top_list_data()

    context['id'] = id

    sql = f"select full_name from chargemasters_files where oshpd_id = '{id}'"
    context['files'] = [r['full_name'] for r in db_exec(conn, sql)]

    sql = f"select * from healthcare_facilities where oshpd_id = '{id}'"
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

def chargemasters_no_oshpd_id():
    context = top_list_data()

    context['files'] = db_exec(conn, "select * from chargemasters_files where oshpd_id is NULL order by full_name")
    context['count'] = len(context['files'])

    return context


def chargemasters_changes():
    context = top_list_data()

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


def chargemasters_columns():
    context = top_list_data()

    files = dict()

    sql = "select pk, full_name from chargemasters_files where file_ext = 'xlsx'"
    for row in db_exec(conn, sql):
        pk = row['pk']
        files[pk] = dict()
        files[pk]['full_name'] = row['full_name']

    sql = "select * from chargemasters_columns"
    for row in db_exec(conn, sql):
        pk = row['file_pk']
        sheet = row['sheet_name']

        if 'sheets' not in files[pk]:
            files[pk]['sheets'] = dict()
        if sheet not in files[pk]['sheets']:
            files[pk]['sheets'][sheet] = dict()
            files[pk]['sheets'][sheet]['count'] = 1
        else:
            files[pk]['sheets'][sheet]['count'] += 1

    sql = "select * from chargemasters_sheets"
    for row in db_exec(conn, sql):
        pk = row['file_pk']
        sheet = row['name']
        files[pk]['sheets'][sheet]['type'] = row['sheet_type']

    context['files'] = files

    return context


def buildings_spc():
    context = dict()
    county = county_names()
    found = list()
    for row in db_exec(conn, "select * from hospital_buildings"):
        row['county'] = county[row['county_code']]
        row['location'] = osm_url(row['latitude'], row['longitude'])
        found.append(row)
    context['buildings'] = found
    return context


def building_details(perm_id):
    context = dict()
    context['buildings'] = db_exec(conn, f"select * from hospital_buildings where perm_id = {perm_id}")
    return context


def facilities_main():
    context = dict()

    sql = """select county_name as name, count(0) as count from licensed_facilities
             group by county_name order by county_name"""
    context['counties'] = db_exec(conn, sql)

    sql = """select license_category_desc as name, count(0) as count from licensed_facilities
             group by license_category_desc order by license_category_desc"""
    context['categories'] = db_exec(conn, sql)

    sql = """select er_service_level_desc as name, count(0) as count from licensed_facilities
             group by er_service_level_desc order by er_service_level_desc"""
    context['er_los'] = db_exec(conn, sql)

    return context


facilities_list_numbers = ['oshpd_id', 'total_number_beds']
facilities_list_hidden = ['latitude', 'longitude']

def facilities_list(form):
    print(f"form: {form}")

    context = facilities_main()

    quals = list()
    if 'county_selected' in form:
        quals.append(f"county_name = '{form['county_selected']}'")
        context['county_selected'] = form['county_selected']
    if 'category_selected' in form and form['category_selected'] != '':
        quals.append(f"license_category_desc = '{form['category_selected']}'")
        context['category_selected'] = form['category_selected']
    if 'er_los_selected' in form and form['er_los_selected'] != '':
        quals.append(f"er_service_level_desc = '{form['er_los_selected']}'")
        context['er_los_selected'] = form['er_los_selected']
    print(f"quals: {quals}")

    found = list()

    if len(quals) > 0:
        sql = f"select * from licensed_facilities where {' and '.join(quals)}"
        for row in db_exec(conn, sql):
            next_row = dict()
            for key in row:
                if key in facilities_list_hidden:
                    continue
                if key in facilities_list_numbers:
                    next_row[key] = fix_int(row[key])
                else:
                    next_row[key] = fix(row[key])
            next_row['location'] = osm_url(row['latitude'], row['longitude'])
            found.append(next_row)
    pprint(context)
    context['facilities'] = found
    return context


def table_info():
    context = dict()

    source = dict()
    with open('../tables.txt') as t:
        lines = t.readlines()
        dset = None
        for line in lines:
            parts = line.strip().split(' ')
            if parts[0] == 'dataset':
                dset = parts[1]
            if parts[0] == 'table':
                source[parts[1]] = dset

    source['updates'] = None

    rows = db_exec(conn, "show tables")
    table_names = dict()
    columns = dict()

    for row in rows:
        table_names[row[0]] = dict()

    for table in table_names:
        table_src = source[table]
        rows = [dict(r) for r in db_exec(conn, f"desc {table}")]
        for row in rows:
            col_name = row['Field']
            if col_name not in columns:
                columns[col_name] = dict()
            columns[col_name][table_src] = row['Type']

    context['columns'] = columns
    context['names'] = sorted(list(columns.keys()))

    return context


def oshpd_id_values(start=0):
    context = dict()

    tables = ['chargemasters_dirs',
              'facility_profiles',
              'healthcare_facilities',
              'licensed_facilities',
              'licensed_facility_aspen_oshpd_crosswalk',
              'licensed_facility_elms_oshpd_crosswalk']

    id_values = list()

    for table in tables:

        sql = f"select oshpd_id from {table} group by oshpd_id order by oshpd_id"
        id_values.extend([r['oshpd_id'] for r in db_exec(conn, sql)])

    id_values = list(set(id_values))

    ids = dict()

    start = int(start)

    end = start + 100

    context['start'] = start
    context['end'] = end
    context['prev'] = start - 100

    for id in id_values[start:end]:

        if not id or id == '' or id == 'EXCLUDED':
            continue

        ids[id] = dict()

        for table in tables:

            if table == 'chargemasters_dirs':
                sql = f"select year, count(0) from chargemasters_dirs where oshpd_id = {fix(id)} group by year order by year"
            else:
                sql = f"select * from {table} where oshpd_id = {fix(id)}"
            print(f"sql: {sql}")
            ids[id][table] = db_exec(conn, sql)
            
    context['ids'] = ids

    return context

