
import argparse
import re
import sys
import traceback
from pprint import pprint

from sqlalchemy import create_engine

import excel

sys.path.append('..')

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
     if val is None or val == '':
         return "NULL"
     else:
         val = str(val).replace("'", "''").replace('%', '%%')
         return f"'{val}'"


short_cols = ['A','B','C','D','E','F','G','H','I','J','K']
long_cols = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N']


def row_is_empty(r):
    for val in r:
        if val is not None or val != '' or val != 'None':
            return False
    return True


def facility_elms_oshpd():
    db_exec(conn, "drop table if exists licensed_facility_elms_oshpd_crosswalk")

    sql = f"""create table licensed_facility_elms_oshpd_crosswalk (
                  xwalk_note varchar(63),
                  age varchar(7),
                  elms_facid char(10),
                  license_number char(10),
                  license_status_description varchar(63),
                  oshpd_id char(9),
                  facname varchar(255),
                  fac_type_description varchar(127),
                  fac_fdr varchar(63),
                  fac_fac_relationship varchar(63),
                  elms_parent_facid char(9))"""
    db_exec(conn, sql)

    f = "elms-oshpd-licensed-and-certified-healthcare-facility-crosswalk.xlsx"

    wb = excel.load_my_workbook('xlsx', f)

    ws = wb.active

    sheet_ok = False

    row_num = 0

    vals = list()

    for row in ws.iter_rows():

        row_num += 1

        if row_num == 1:
            continue

        this_row = list()

        for col in short_cols:
            key = f"{col}{row_num}"
            val = excel.cell_value('xlsx', ws, key)
            this_row.append(fix(val))

        sql = f"insert into licensed_facility_elms_oshpd_crosswalk values ({', '.join(this_row)})"
        # print(f"sql: {sql}")
        db_exec(conn, sql)

        vals.append(this_row)

    print(f"licensed_facility_elms_oshpd_crosswalk # {len(vals)}")


def facility_elms_aspen():
    db_exec(conn, "drop table if exists licensed_facility_elms_aspen_crosswalk")

    sql = f"""create table licensed_facility_elms_aspen_crosswalk (
                  xwalk_note varchar(63),
                  age varchar(7),
                  elms_facid char(10),
                  license_number char(10),
                  license_status_description varchar(63),
                  aspen_id varchar(31),
                  ccn varchar(10),
                  npi char(10),
                  aspen_status varchar(63),
                  facname varchar(255),
                  fac_type_description varchar(127),
                  fac_fdr varchar(63),
                  fac_fac_relationship varchar(63),
                  elms_parent_facid char(9))"""
    db_exec(conn, sql)

    f = "elms-aspen-licensed-and-certified-healthcare-facility-crosswalk.xls"

    wb = excel.load_my_workbook('xlsx', f)

    ws = wb.active

    sheet_ok = False

    row_num = 0

    vals = list()

    for row in ws.iter_rows():

        row_num += 1

        if row_num == 1:
            continue

        this_row = list()

        for col in long_cols:
            key = f"{col}{row_num}"
            val = excel.cell_value('xlsx', ws, key)
            this_row.append(fix(val))

        sql = f"insert into licensed_facility_elms_aspen_crosswalk values ({', '.join(this_row)})"
        # print(f"sql: {sql}")
        db_exec(conn, sql)

        vals.append(this_row)

    print(f"licensed_facility_elms_aspen_crosswalk # {len(vals)}")


def facility_aspen_oshpd():
    db_exec(conn, "drop table if exists licensed_facility_aspen_oshpd_crosswalk")

    sql = f"""create table licensed_facility_aspen_oshpd_crosswalk (
                  license_certified varchar(63),
                  elms_facid char(10),
                  license_number char(10),
                  license_status_description varchar(63),
                  oshpd_id varchar(31),
                  aspen_facid varchar(31),
                  ccn varchar(10),
                  npi char(10),
                  aspen_status varchar(63),
                  facname varchar(255),
                  fac_type_description varchar(127),
                  fac_fdr varchar(63),
                  fac_fac_relationship varchar(63),
                  elms_parent_facid char(9))"""
    db_exec(conn, sql)

    f = "elms-aspen-oshpd-licensed-and-certified-healthcare-facility-crosswalk.xlsx"

    wb = excel.load_my_workbook('xlsx', f)

    ws = wb.active

    sheet_ok = False

    row_num = 0

    vals = list()

    for row in ws.iter_rows():

        row_num += 1

        if row_num == 1:
            continue

        this_row = list()

        for col in long_cols:
            key = f"{col}{row_num}"
            val = excel.cell_value('xlsx', ws, key)
            this_row.append(fix(val))

        sql = f"insert into licensed_facility_aspen_oshpd_crosswalk values ({', '.join(this_row)})"
        # print(f"sql: {sql}")
        db_exec(conn, sql)

        vals.append(this_row)

    print(f"licensed_facility_aspen_oshpd_crosswalk # {len(vals)}")


if __name__ == '__main__':

    # facility_elms_oshpd()

    # when I can read xls files, this will work.
    #
    facility_elms_aspen()

    # facility_aspen_oshpd()

