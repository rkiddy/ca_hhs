
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

        val = val.replace('Cell suppressed for complimentary cell small number. Number of ' \
                             'children corresponds to percentage range indicated in the Percent column.',
                          'complimentary cell small number')
        val = val.replace('Cell suppressed for small number.  Fewer than 20 enrollees.', 'cell suppressed, < 20')
        val = val.replace('Cell suppressed for small number. Number of children corresponds to ' \
                          'percentage range indicated in the Percent column.', 'cell suppressed, see percentage')
        val = val.replace('This value represents greater than or equal to 95 percent.', '>= 95%')
        val = val.replace('This value represents greater than or equal to 98 percent.', '>= 98%')
        val = val.replace('This value represents greater than or equal to 99 percent.', '>= 99%')
        val = val.replace('This value represents less than or equal to 1 percent.', '<= 1%')
        val = val.replace('This value represents less than or equal to 2 percent.', '<= 2%')
        val = val.replace('This value represents less than or equal to 5 percent.', '<= 5%')
        val = val.replace('Cell suppressed for small number.  Fewer than 20 enrollees, data omitted.', '<= 20')

        val = val.replace("'", "''").replace('%', '%%')
        while val.endswith('\\'):
            val = val[0:-1]
        return f"'{val}'"

def fix_int(val):
    if val is None or val == '':
        return 'NULL'
    else:
        return val


def fix_column_head(c):
    if c.endswith('SCHOOL_YEAR'):
        return 'school_year'
    return c.split('(')[0].lower().replace(' ', '_')

columns = [
    "SCHOOL_YEAR",
    "SCHOOL_CODE",
    "SCHOOL_NAME",
    "CITY",
    "COUNTY",
    "PUBLIC_PRIVATE",
    "PUBLIC_SCHOOL_DISTRICT",
    "ENROLLMENT",
    "REPORTED",
    "CATEGORY",
    "COUNT",
    "PERCENT",
    "ANNOTATION_CODE",
    "ANNOTATION_COUNT_DESC",
    "ANNOTATION_PERCENT_DESC"]


numbers = ['ENROLLMENT', 'PERCENT', 'ANNOTATION_CODE']

longs = ['PUBLIC_SCHOOL_DISTRICT']

very_longs = ['SCHOOL_NAME', 'ANNOTATION_COUNT_DESC', 'ANNOTATION_PERCENT_DESC']

if __name__ == '__main__':

    db_exec(conn, "drop table if exists school_immunizations")

    sql = """create table school_immunizations (
                 school_year char(9),
                 school_code varchar(7),
                 school_name varchar(255),
                 city varchar(31),
                 county varchar(31),
                 is_public char(1),
                 public_school_district varchar(63),
                 enrollment int,
                 reported char(1),
                 category varchar(31),
                 count int,
                 percent int,
                 annotation_code int,
                 annotation_count_desc varchar(63),
                 annotation_percent_desc varchar(63))"""
    db_exec(conn, sql)

    files = ['immunizations-in-first-grade-2021-2022-academic-school-year.csv']

    for f in files:

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
                        if key == 'PUBLIC_PRIVATE':
                            if row[key] == 'Public':
                                next_row['is_public'] = 'Y'
                            else:
                                next_row['is_public'] = 'N'
                        else:
                            next_row[fix_column_head(key)] = row[key]

                    row = next_row

                    # print(f"row: {row}")

                    cols = list()
                    vals = list()

                    for key in row:
                        cols.append(key)
                        vals.append(fix(row[key]))

                    sql = "insert into school_immunizations ("
                    sql += ', '.join(cols)
                    sql += ') values ('
                    sql += ', '.join(vals)
                    sql += ')'

                    num += 1

                    # print(f"sql: {sql}")

                    db_exec(conn, sql)

            print(f" -> {num}")

