import csv
import os
import sys
import traceback

from sqlalchemy import create_engine

sys.path.append('..')

import config

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://{cfg['USR']}:{cfg['PWD']}@{cfg['HOST']}/{cfg['DB']}")
conn = engine.connect()


def db_exec(eng, this_sql):
    # print(f"sql: {sql}")
    if this_sql.strip().startswith('select'):
        return [dict(row) for row in eng.execute(this_sql).fetchall()]
    else:
        # print(f"sql: {this_sql}")
        return eng.execute(this_sql)
        foo = intput()

def fix(val):
    if val is None or val == '':
        return 'NULL'
    else:
        val = val.replace("'", "''").replace('%', '%%')
        while val.endswith('\\'):
            val = val[0:-1]
        return f"'{val}'"

def fix_int(val):
    if val is None or val == '':
        return 'NULL'
    else:
        return val


def fix_year(y):
    return y.replace('H1', '').replace('H2', '')


def fix_column_head(c):
    c = c.split('(')[0]
    while c.endswith(' '):
        c = c[0:-1]
    return c.lower().replace(' ', '_')


def fix_column_heads(kind, row):
    next_row = dict()

    for key in row:
        key2 = fix_column_head(key)

        if key2 == '':
            continue

        if kind == 'IN_PATIENTS':
            if key2.startswith('on_track') or key2 == 'met_2020_goal':
                next_row['on_track_to_goal'] = row[key]
                continue

        if kind.startswith('FOR_PROCEDURES_'):
            key2 = key2.replace('facility_name', 'facility_name_')
            key2 = key2.replace('facility_name__', 'facility_name_')
            key2 = key2.replace('facility_id', 'facility_id_')
            key2 = key2.replace('facid', 'facility_id_')
            key2 = key2.replace('facility_id__', 'facility_id_')
            key2 = key2.replace('_ul', '_upper_limit')
            key2 = key2.replace('_ll', '_lower_limit')
            key2 = key2.replace('95%', '95')
            key2 = key2.replace('95_ci', 'ci_95')

        next_row[key2] = row[key]

    return next_row


files = {'hospitals-who-did-not-report-surgical-procedures-2016.csv': 'DID_NOT_REPORT',
         'hospitals-who-did-not-report-surgical-procedures-2017.csv': 'DID_NOT_REPORT',
         'hospitals-who-did-not-report-surgical-procedures-2018.csv': 'DID_NOT_REPORT',
         'hospitals-who-did-not-report-surgical-procedures-2019.csv': 'DID_NOT_REPORT',
         'hospitals-who-did-not-report-surgical-procedures-2022.csv': 'DID_NOT_REPORT',
         'hospitals-who-did-not-report-surgical-procedures-january-1-december-31-2021.csv': 'DID_NOT_REPORT',
         'hospitals-who-did-not-report-surgical-procedures-january-1-december-31-2023.csv': 'DID_NOT_REPORT',
         'hospitals-who-did-not-report-surgical-procedures-january-1-june-30-2020-updated-annually.csv': 'DID_NOT_REPORT',
         'hospitals-who-did-not-report-surgical-procedures-july-1-december-31-2020-updated-annually.csv': 'DID_NOT_REPORT',
         'ssi-in-adult-patients-2016.csv': 'IN_PATIENTS',
         'ssi-in-adult-patients-2017.csv': 'IN_PATIENTS',
         'ssi-in-adult-patients-2018.csv': 'IN_PATIENTS',
         'ssi-in-adult-patients-2019.csv': 'IN_PATIENTS',
         'ssi-in-adult-patients-2021.csv': 'IN_PATIENTS',
         'ssi-in-adult-patients-2022.csv': 'IN_PATIENTS',
         'ssi-in-adult-patients-january-1-december-31-2023.csv': 'BINARY_NOT_CSV',
         'ssi-in-adult-patients-january-1-june-30-2020-updated-annually.csv': 'IN_PATIENTS',
         'ssi-in-adult-patients-july-1-december-31-2020-updated-annually.csv': 'IN_PATIENTS',
         'ssi-in-pediatric-patients-2016.csv': 'IN_PATIENTS',
         'ssi-in-pediatric-patients-2017.csv': 'IN_PATIENTS',
         'ssi-in-pediatric-patients-2018.csv': 'IN_PATIENTS',
         'ssi-in-pediatric-patients-2019.csv': 'IN_PATIENTS',
         'ssi-in-pediatric-patients-2022.csv': 'IN_PATIENTS',
         'ssi-in-pediatric-patients-january-1-december-31-2021.csv': 'IN_PATIENTS',
         'ssi-in-pediatric-patients-january-1-december-31-2023.csv': 'BINARY_NOT_CSV',
         'ssi-in-pediatric-patients-january-1-june-30-2020-updated-annually.csv': 'IN_PATIENTS',
         'ssi-in-pediatric-patients-july-1-december-31-2020-updated-annually.csv': 'IN_PATIENTS',
         'ssis-for-24-operative-procedures-2013.csv': 'FOR_PROCEDURES_24',
         'ssis-for-24-operative-procedures-2014.csv': 'FOR_PROCEDURES_24',
         'ssis-for-24-operative-procedures-2015.csv': 'FOR_PROCEDURES_24',
         'ssis-for-5-operative-procedures-2013.csv': 'FOR_PROCEDURES_5',
         'ssis-for-5-operative-procedures-2014.csv': 'FOR_PROCEDURES_5',
         'ssis-for-5-operative-procedures-2015.csv': 'FOR_PROCEDURES_5'}


ints = {'DID_NOT_REPORT': ['year', 'number_months_expected'],
        'IN_PATIENTS': ['year', 'procedure_count', 'infections_reported', 'infections_predicted',
                        'predicted_infection_count', 'infection_count'],
        'FOR_PROCEDURES': ['year', 'procedure_count', 'infection_count', 'predicted_infection_count']}


def to_sql(table, data):
    cols = list()
    vals = list()

    for key in row:
        cols.append(key)
        vals.append(row[key])

    sql = f"insert into {table} ("
    sql += ', '.join(cols)
    sql += ') values ('
    sql += ', '.join(vals)
    sql += ')'

    return sql


if __name__ == '__main__':

    db_exec(conn, "drop table if exists ssi_for_procedures_did_not_report")

    sql = """create table ssi_for_procedures_did_not_report (
                 year int,
                 state varchar(13),
                 county varchar(31),
                 hai varchar(255),
                 facility_id varchar(63),
                 facility_name varchar(1027),
                 facility_type varchar(127),
                 number_months_expected int,
                 notes varchar(1027))"""
    db_exec(conn, sql)

    db_exec(conn, "drop table if exists ssi_for_procedures_in_patients")

    sql = """create table ssi_for_procedures_in_patients (
                 year int,
                 state varchar(63),
                 hai varchar(63),
                 facility_id varchar(63),
                 facility_name varchar(1027),
                 facility_type varchar(63),
                 county varchar(63),
                 hospital_category_riskadjustment varchar(63),
                 hospital_type varchar(63),
                 operative_procedure varchar(1027),
                 procedure_count int,
                 infections_reported int,
                 infections_predicted int,
                 predicted_infection_count int,
                 infection_count int,
                 sir varchar(63),
                 sir_ci_95_lower_limit varchar(63),
                 sir_ci_95_upper_limit varchar(63),
                 comparison varchar(63),
                 on_track_to_goal varchar(63),
                 sir_2015 varchar(63),
                 notes varchar(63))"""
    db_exec(conn, sql)

    db_exec(conn, "drop table if exists ssi_for_procedures_5")

    sql = """create table ssi_for_procedures_5 (
                 year int,
                 state varchar(63),
                 hai varchar(63),
                 operative_procedure varchar(255),
                 facility_id_1 varchar(63),
                 facility_name_1 varchar(255),
                 facility_id_2 varchar(63),
                 facility_name_2 varchar(255),
                 facility_id_3 varchar(63),
                 facility_name_3 varchar(255),
                 county varchar(63),
                 procedure_count int,
                 infection_count int,
                 predicted_infection_count int,
                 sir varchar(63),
                 comparison varchar(63),
                 sir_ci_95_lower_limit varchar(63),
                 sir_ci_95_upper_limit varchar(63),
                 notes varchar(1027))"""
    db_exec(conn, sql)

    db_exec(conn, "drop table if exists ssi_for_procedures_24")

    sql = """create table ssi_for_procedures_24 (
                 year int,
                 state varchar(63),
                 hai varchar(63),
                 operative_procedure varchar(255),
                 facility_id_1 varchar(63),
                 facility_name_1 varchar(255),
                 facility_id_2 varchar(63),
                 facility_name_2 varchar(255),
                 facility_id_3 varchar(63),
                 facility_name_3 varchar(255),
                 county varchar(63),
                 procedure_count int,
                 infection_count int,
                 predicted_infection_count int,
                 sir varchar(63),
                 comparison varchar(63),
                 sir_ci_95_lower_limit varchar(63),
                 sir_ci_95_upper_limit varchar(63),
                 notes varchar(1027))"""
    db_exec(conn, sql)

    for file in files:

        if files[file] == 'DID_NOT_REPORT':

            print(f"Processing file: {file}")

            with open(file, newline='', encoding='latin1') as csvfile:
                rdr = csv.DictReader(csvfile)

                for row in rdr:

                    try:
                        row = fix_column_heads(files[file], row)

                        next_row = dict()
                        for key in row:
                            if key in ints['DID_NOT_REPORT']:
                                next_row[key] = fix_year(fix_int(row[key]))
                            else:
                                next_row[key] = fix(row[key])
                        row = next_row

                        # print(f"row: {row}")

                        sql = to_sql('ssi_for_procedures_did_not_report', row)

                        # print(f"sql: {sql}")

                        db_exec(conn, sql)

                    except:
                        print(f"file: {file}")
                        print(f"row: {row}")
                        print(f"sql: {sql}")
                        traceback.print_exc()
                        break

            continue

        if files[file] == 'IN_PATIENTS':

            print(f"Processing file: {file}")

            with open(file, newline='', encoding='latin1') as csvfile:
                rdr = csv.DictReader(csvfile)

                for row in rdr:

                    try:

                        row = fix_column_heads(files[file], row)

                        next_row = dict()
                        for key in row:
                            if key in ints['IN_PATIENTS']:
                                next_row[key] = fix_year(fix_int(row[key]))
                            else:
                                next_row[key] = fix(row[key])
                        row = next_row

                        # print(f"row: {row}")

                        sql = to_sql('ssi_for_procedures_in_patients', row)

                        # print(f"sql: {sql}")

                        db_exec(conn, sql)

                    except:
                        print(f"file: {file}")
                        print(f"row: {row}")
                        print(f"sql: {sql}")
                        traceback.print_exc()
                        quit()

            continue

        if files[file].startswith('FOR_PROCEDURES_'):

            print(f"Processing file: {file}")

            with open(file, newline='', encoding='latin1') as csvfile:
                rdr = csv.DictReader(csvfile)

                for row in rdr:

                    try:

                        row = fix_column_heads(files[file], row)

                        next_row = dict()
                        for key in row:
                            if key in ints['FOR_PROCEDURES']:
                                next_row[key] = fix_year(fix_int(row[key]))
                            else:
                                next_row[key] = fix(row[key])
                        row = next_row

                        # print(f"row: {row}")

                        if '-5-' in file:
                            table = "ssi_for_procedures_5"
                        if '-24-' in file:
                            table = "ssi_for_procedures_24"

                        sql = to_sql(table, row)

                        # print(f"sql: {sql}")

                        db_exec(conn, sql)

                    except:
                        print(f"file: {file}")
                        print(f"row: {row}")
                        print(f"sql: {sql}")
                        traceback.print_exc()
                        quit()

            continue

        print(f"Skipping file: {file}")

