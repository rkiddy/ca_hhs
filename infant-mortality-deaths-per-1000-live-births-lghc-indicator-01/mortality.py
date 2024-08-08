
import csv
import os
import sys
import traceback
from os import path

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


def fix_column_head(c):
    return c.split('(')[0].lower().replace(' ', '_').replace('%', '')


if __name__ == '__main__':

    db_exec(conn, "drop table if exists infant_mortality_per_1000_births")

    sql = """
          create table infant_mortality_per_1000_births (
              lghc_indicator_name varchar(63),
              geography varchar(63),
              year varchar(31),
              strata varchar(63),
              strata_name varchar(63),
              rate varchar(15),
              lower_95_ci varchar(15),
              upper_95_ci varchar(15))"""
    db_exec(conn, sql)

    with open('infant-mortality-deaths-per-1000-live-births-lghc-indicator-01-.csv',
              newline='', encoding='latin1') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            # print(f"row: {row}")

            next_row = dict()

            for key in row:
                next_row[fix_column_head(key)] = row[key]

            row = next_row

            # print(f"row: {row}")

            cols = list()
            vals = list()

            for key in row:
                cols.append(key)
                vals.append(fix(row[key]))

            sql = "insert into infant_mortality_per_1000_births ("
            sql += ', '.join(cols)
            sql += ') values ('
            sql += ', '.join(vals)
            sql += ')'

            # print(f"sql: {sql}")

            db_exec(conn, sql)

