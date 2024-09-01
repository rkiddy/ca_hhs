
import csv
import os
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
        return val


def fix_column_head(c):
    return c.split('(')[0].lower().replace(' ', '_')


if __name__ == '__main__':

    db_exec(conn, "drop table if exists sud_facilities")

    sql = """create table sud_facilities (
              x varchar(63),
              y varchar(63),
              objectid varchar(63),
              county_code varchar(63),
              record_id varchar(63),
              legal_name varchar(255),
              program_name varchar(255),
              facility_address varchar(255),
              facility_address_2 varchar(255),
              additional_facility_locations varchar(255),
              facility_city varchar(63),
              facility_state varchar(63),
              facility_zip varchar(63),
              facility_phone varchar(63),
              type_of_application varchar(63),
              service_type varchar(63),
              resident_capacity varchar(63),
              total_occupancy varchar(63),
              expiration_date varchar(63),
              target_population varchar(63),
              incidental_medical_services varchar(63),
              adolescent_waiver varchar(63),
              latitude decimal(12,8),
              longitude decimal(12,8),
              countyname varchar(63))"""
    db_exec(conn, sql)

    with open('.csv', newline='', encoding='latin1') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            next_row = dict()

            for key in row:
                # garbage names in csv again.
                if key.endswith('X'):
                    next_row['x'] = row[key]
                    continue
                next_row[fix_column_head(key)] = row[key]

            row = next_row

            # print(f"row: {row}")

            cols = list()
            vals = list()

            for key in row:
                cols.append(key)
                vals.append(fix(row[key]))

            sql = "insert into sud_facilities ("
            sql += ', '.join(cols)
            sql += ') values ('
            sql += ', '.join(vals)
            sql += ')'

            # print(f"sql: {sql}")
            # quit()

            db_exec(conn, sql)

