
import csv
import os
import re
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
        return val.replace(',', '')


def fix_column_head(c):
    return c.split('(')[0].lower().replace(' ', '_').replace('-', '_')


columns = [
    "COUNTY",
    "YEARS",
    "STRATA",
    "AGE GROUP",
    "NUMBER OF DEATHS",
    "AGE-ADJUSTED MORTALITY RATE",
    "COMMENT"]

numbers = ["number_of_deaths"]

longs = ["comment"]

if __name__ == '__main__':

    db_exec(conn, "drop table if exists asthma_deaths_by_county")

    cols = list()
    for c in columns:
        c = fix_column_head(c)
        if c in numbers:
            cols.append(f"{c} int")
        elif c == 'age_adjusted_mortality_rate':
            cols.append(f"{c} decimal(4,2)")
        else:
            if c in longs:
                cols.append(f"{c} varchar(255)")
            else:
                cols.append(f"{c} varchar(31)")

    sql = f"create table asthma_deaths_by_county ({', '.join(cols)})"
    # print(f"sql: {sql}")
    db_exec(conn, sql)

    for f in os.listdir():

        # skip the data-dictionary file.
        #
        if f.endswith('.csv') and not f.startswith("data"):

            print(f"file: {f} ", end='')

            num = 0

            with open(f, newline='', encoding='latin1') as csvfile:
                rdr = csv.DictReader(csvfile)

                for row in rdr:

                    next_row = dict()

                    for key in row:
                        next_row[fix_column_head(key)] = row[key]

                    row = next_row

                    # print(f"row: {row}")

                    cols = list()
                    vals = list()

                    for key in row:
                        cols.append(key)
                        if key in numbers:
                            vals.append(fix_int(row[key]))
                        else:
                            vals.append(fix(row[key]))

                    sql = "insert into asthma_deaths_by_county ("
                    sql += ', '.join(cols)
                    sql += ') values ('
                    sql += ', '.join(vals)
                    sql += ')'

                    num += 1

                    # print(f"sql: {sql}")

                    db_exec(conn, sql)

            print(f" -> {num}")

