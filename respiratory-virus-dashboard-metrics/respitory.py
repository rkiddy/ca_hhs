
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
        start = start.replace("'", "''").replace('%', '%%")
        return f"'{start}'"


def fix_int(start):
    if not start:
        return 'NULL'
    else:
        start = start.replace(',', '')
        return start


column_heads = {'LICENSE TYPE': 'license_type',
                'LICENSEE FIRST NAME': 'first_name',
                'LICENSEE LAST NAME': 'last_name',
                'CITY': 'city',
                'STATE': 'state'}

nums = ['deaths_dc_dod_covid', 'deaths_dc_dod_influenza', 'deaths_dc_dod_all_disease']

if __name__ == '__main__':

    db_exec(conn, "drop table if exists respiratory_virus_dashboard")

    sql = """
          create table respiratory_virus_dashboard (
              data_date char(10),
              area varchar(63),
              area_type varchar(63),
              deaths_dc_dod_covid int,
              deaths_dc_dod_influenza int,
              deaths_dc_dod_all_disease int)"""
    db_exec(conn, sql)

    f = "respiratory-virus-dashboard-metrics-deaths.csv"

    num = 0

    with open(f, newline='') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            next_row = dict()

            for key in list(row.keys()):
                if key == 'date':
                    next_row['data_date'] = fix(row['date'])
                    continue
                if key in nums:
                    next_row[key] = fix_int(row[key])
                else:
                    next_row[key] = fix(row[key])

            # print(f"next_row: {next_row}")

            col_names = list(next_row.keys())
            cols = ', '.join(col_names)

            values = list()
            for col in col_names:
                values.append(next_row[col])
            vals = ', '.join(values)

            try:
                sql = f"insert into respiratory_virus_dashboard ({cols}) values ({vals})"
                # print(f"sql: {sql}")
                db_exec(conn, sql)
                num += 1
            except:
                traceback.print_exc()
                quit()

    sql = "insert into updates values ('respiratory-virus-dashboard-metrics', unix_timestamp(now()))"
    db_exec(conn, sql)

    print(f"dashboard rows # {num}")

