
import csv
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


def fix(start):
    if not start:
        return 'NULL'
    else:
        start = start.strip().replace("'", "''").replace('%', '%%')
        return f"'{start}'"


def fix_int(start):
    if not start:
        return 'NULL'
    else:
        start = start.strip().replace(',', '').replace('$', '')
        return start


def fix_date(start):
    if start is None:
        return 'NULL';
    parts = start.split('/')
    year = parts[2]
    mon = str(parts[0]).zfill(2)
    dat = str(parts[0]).zfill(2)
    return f"'{year}-{mon}-{dat}'"


def fix_col_head(start):
    if start == '# Enrolled':
        return 'enrolled'
    return start.lower().replace('-', '_').replace('/', '_')


numbers = ['enrolled']


if __name__ == '__main__':

    db_exec(conn, "drop table if exists enrollment_data")

    sql = """create table enrollment_data (
                 eligibility_date date,
                 sex char(1),
                 county varchar(31),
                 region varchar(31),
                 age_group varchar(15),
                 ethnic_group varchar(31),
                 language varchar(31),
                 enrolled int)"""
    db_exec(conn, sql)

    num = 0

    with open('medi-cal-enrollment-dashboard-data.csv', newline='') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            next_row = dict()
            for key in row:
                next_row[fix_col_head(key)] = row[key]

            row = next_row
            # print(f"row: {row}")

            vals = list()
            for key in row:
                if key in numbers:
                    vals.append(fix_int(row[key]))
                elif key == 'eligibility date':
                    vals.append(fix_date(row[key]))
                else:
                    vals.append(fix(row[key]))

            sql = "insert into enrollment_data values ("
            sql += ','.join(vals)
            sql += ")"

            # print(f"sql: {sql}")
            db_exec(conn, sql)
            num += 1

    print(f"enrollment_data # {num}")

