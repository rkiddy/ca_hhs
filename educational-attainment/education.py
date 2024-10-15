
import argparse
import re
import sys
import traceback
from pprint import pprint

from sqlalchemy import create_engine

sys.path.append('..')

import excel
import config

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://{cfg['USR']}:{cfg['PWD']}@{cfg['HOST']}/{cfg['DB']}")
conn = engine.connect()


def db_exec(engine, sql):
    # print(f"sql: {sql}")
    if sql.strip().startswith('select'):
        return [dict(r) for r in engine.execute(sql).fetchall()]
    else:
        return engine.execute(sql)


def fix(val):
    if val is None or val == '' or val == 'NA':
        return "NULL"
    val = str(val).replace("'", "''").replace('%', '%%')
    return f"'{val}'"


def fix_number(val):
    if val is None or val == '' or val == 'NA':
        return "NULL"
    return str(val)


ints = ['ind_id', 'reportyear', 'race_eth_code', 'numerator', 'denominator']
decimals = ['estimate', 'CA_RR']

cols = list('ABCDEFGHIJKLMNOPQRSTUVWXYZ')


def row_is_empty(r):
    for val in r:
        if val is not None and val != '' and val != 'None' and val != "NULL":
            return False
    return True


def educational_attainment():
    db_exec(conn, "drop table if exists educational_attainment")

    sql = f"""create table educational_attainment (
                  ind_id int,
                  ind_definition varchar(127),
                  reportyear int,
                  race_eth_code int,
                  race_eth_name varchar(31),
                  geotype char(2),
                  geotypevalue varchar(15),
                  geoname varchar(127),
                  county_name varchar(127),
                  county_fips varchar(5),
                  region_name varchar(127),
                  region_code char(2),
                  strata_one_code int,
                  strata_one_name varchar(127),
                  strata_two_code varchar(31),
                  strata_two_name varchar(31),
                  numerator bigint,
                  denominator bigint,
                  estimate decimal(6,2),
                  LL_95CI varchar(31),
                  UL_95CI varchar(31),
                  SE varchar(31),
                  RSE varchar(31),
                  CA_decile varchar(31),
                  CA_RR decimal(30,27),
                  version varchar(31))"""
    db_exec(conn, sql)

    f = "educational-attainment-indicator-355.xlsx"

    wb = excel.load_my_workbook('xlsx', f)

    ws = wb.active

    sheet_has_data = True

    row_num = 1

    keys = [ws[f"{col}1"].value for col in cols]

    while sheet_has_data:

        row_num += 1

        values = [ws[f"{col}{row_num}"].value for col in cols]

        this_row = list()

        row = dict(zip(keys, values))

        for key in keys:

            if key in ints or key in decimals:
                this_row.append(fix_number(row[key]))
            else:
                this_row.append(fix(row[key]))

        if not row_is_empty(this_row):
            sql = f"insert into educational_attainment values ({', '.join(this_row)})"
            # print(f"sql: {sql}")
            try:
                db_exec(conn, sql)
            except Exception as e:
                print(f"exception row: {row}")
                raise e
        else:
            sheet_has_data = False

    row_num -= 1

    print(f"educational_attainment # {row_num}")


if __name__ == '__main__':

    # when I can read xls files, this will work.
    #
    educational_attainment()
