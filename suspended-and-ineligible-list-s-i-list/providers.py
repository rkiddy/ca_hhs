
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
    return c.split('(')[0].lower().replace(' ', '_')


if __name__ == '__main__':

    db_exec(conn, "drop table if exists providers_suspended_ineligible")

    sql = """
          create table providers_suspended_ineligible (
              last_name varchar(127),
              first_name varchar(63),
              middle_name varchar(63),
              doing_business_as varchar(511),
              address varchar(511),
              provider_type varchar(255),
              license_number varchar(63),
              provider_number varchar(1027),
              date_of_suspension varchar(10),
              active_period varchar(63))"""
    db_exec(conn, sql)

    with open('provider-suspended-and-ineligible-list-s-i-list.csv', newline='', encoding='latin1') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            next_row = dict()

            for key in row:
                # garbage names in csv again.
                if key.endswith('Last Name'):
                    next_row['last_name'] = row[key]
                    continue
                if key.endswith('Doing Business as'):
                    next_row['doing_business_as'] = row[key]
                    continue
                next_row[fix_column_head(key)] = row[key]

            parts = next_row['date_of_suspension'].split('/')

            if len(parts) == 3:
                first = parts[0].zfill(2)
                second = parts[1].zfill(2)
                third = parts[2]

                next_row['date_of_suspension'] = f"{third}-{first}-{second}"

            row = next_row

            # print(f"row: {row}")

            cols = list()
            vals = list()

            for key in row:
                cols.append(key)
                vals.append(fix(row[key]))

            sql = "insert into providers_suspended_ineligible ("
            sql += ', '.join(cols)
            sql += ') values ('
            sql += ', '.join(vals)
            sql += ')'

            # print(f"sql: {sql}")

            db_exec(conn, sql)

