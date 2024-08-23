
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


if __name__ == '__main__':

    db_exec(conn, "drop table if exists family_pact_total_provider_reimbursement")

    sql = """create table family_pact_total_provider_reimbursement (
                 fiscal_year int,
                 amount decimal(16,2))"""
    db_exec(conn, sql)

    f = "total-provider-reimbursement-for-family-pact-services-by-fiscal-years.csv"

    num = 0

    with open(f, newline='') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            next_row = dict()

            for key in list(row.keys()):
                if key.endswith('(FY)'):
                    next_row['fiscal_year'] = fix(row[key])
                else:
                    next_row['amount'] = fix_int(row[key])

            # print(f"next_row: {next_row}")

            col_names = list(next_row.keys())
            cols = ', '.join(col_names)

            values = list()
            for col in col_names:
                values.append(next_row[col])
            vals = ', '.join(values)

            try:
                sql = f"insert into family_pact_total_provider_reimbursement ({cols}) values ({vals})"
                # print(f"sql: {sql}")
                db_exec(conn, sql)
                num += 1
            except:
                traceback.print_exc()
                quit()

    sql = "insert into updates values ('total-provider-reimbursement-for-family-pact-services-by-fiscal-years', unix_timestamp(now()))"
    db_exec(conn, sql)

    print(f"dashboard rows # {num}")

