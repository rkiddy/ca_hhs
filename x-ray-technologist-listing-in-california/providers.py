
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
        start = start.replace("'", "''")
        return f"'{start}'"


column_heads = {'LICENSE TYPE': 'license_type',
                'LICENSEE FIRST NAME': 'first_name',
                'LICENSEE LAST NAME': 'last_name',
                'CITY': 'city',
                'STATE': 'state'}


if __name__ == '__main__':

    db_exec(conn, "drop table if exists xray_providers")

    sql = """
          create table xray_providers (
              license_type varchar(127),
              first_name varchar(127),
              last_name varchar(127),
              city varchar(31),
              state varchar(10))"""
    db_exec(conn, sql)

    f = "x-ray-technologist-listing-in-california-.csv"

    num = 0

    with open(f, newline='') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            row.pop('')

            next_row = dict()

            for key in list(row.keys()):
                key2 = column_heads[key]
                if not row[key]:
                    next_row[key2] = None
                else:
                    next_row[key2] = row[key].strip()

            # print(f"next_row: {next_row}")

            col_names = list(next_row.keys())
            cols = ', '.join(col_names)

            values = list()
            for col in col_names:
                values.append(fix(next_row[col]))
            vals = ', '.join(values)

            try:
                sql = f"insert into xray_providers ({cols}) values ({vals})"
                # print(f"sql: {sql}")
                db_exec(conn, sql)
                num += 1
            except:
                traceback.print_exc()
                quit()

    sql = "insert into updates values ('x-ray-technologist-listing-in-california', unix_timestamp(now()))"
    db_exec(conn, sql)

    print(f"xray providers # {num}")

