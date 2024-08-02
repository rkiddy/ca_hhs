
import csv
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
        return f"'{val}'"


def fix_int(val):
    if val is None or val == '':
        return 'NULL'
    else:
        return val


def column_names(table):
    found_cols = list()
    sql = f"desc {table}"
    rows = db_exec(conn, sql)
    for row in rows:
        found_cols.append(row[0])
    return found_cols


files = {'hpd-snapshot-data-enrollment-2018-2021.csv': 'payments_snapshot_enrollment',
         'hpd-snapshot-data-medical-2018-2021.csv': 'payments_snapshot_medical',
         'hpd-snapshot-data-pharmacy-2018-2021.csv': 'payments_snapshot_pharmaceutical'}


if __name__ == '__main__':

    db_exec(conn, "drop table if exists payments_snapshot_enrollment")

    sql = """create table payments_snapshot_enrollment (
                 product_type varchar(63),
                 reporting_year int,
                 claim_type varchar(63),
                 payer_type varchar(63),
                 record_type varchar(63),
                 metric_id int,
                 metric_name varchar(63),
                 count int)"""
    db_exec(conn, sql)

    db_exec(conn, "drop table if exists payments_snapshot_medical")

    sql = """create table payments_snapshot_medical (
                 procedure_code char(5),
                 procedure_code_type varchar(31),
                 procedure_category varchar(127),
                 reporting_year int,
                 type_of_setting varchar(63),
                 payer_type varchar(63),
                 record_count int)"""
    db_exec(conn, sql)

    db_exec(conn, "drop table if exists payments_snapshot_pharmaceutical")

    sql = """create table payments_snapshot_pharmaceutical (
                 national_drug_code char(11),
                 drug_name varchar(63),
                 reporting_year int,
                 drug_class varchar(63),
                 brand_generic varchar(63),
                 payer_type varchar(63),
                 prescription_count int)"""
    db_exec(conn, sql)

    for file in files:
        print(f"processing: {file}")

        table = files[file]

        columns = column_names(table)

        with open(file, newline='', encoding='latin1') as csvfile:
            rdr = csv.DictReader(csvfile)
            for row in rdr:
                values = list()
                for key in row.keys():
                    if key.endswith('count') or key.endswith('year'):
                        values.append(fix_int(row[key]))
                    else:
                        values.append(fix(row[key]))
                sql = f"insert into {table} ("
                sql += ', '.join(columns)
                sql += ") values ("
                sql += ', '.join(values)
                sql += ")"

                try:
                    # print(f"sql: {sql}")
                    db_exec(conn, sql)

                except:
                    print(f"sql: {sql}")
                    traceback.print_exc()

    sql = "update payments_snapshot_enrollment set product_type = 'All' where product_type = 'ALL'"
    db_exec(conn, sql)

