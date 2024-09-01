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
        val = val.replace("'", "''")
        return f"'{val}'"


def fix_int(val):
    if val is None or val == '':
        return 'NULL'
    else:
        return val


def fix_column_head(c):
    c = c.split('(')[0]
    while c.endswith(' '):
        c = c[0:-1]
    return c.lower().replace(' ', '_')


def fix_column_heads(row):
    next_row = dict()

    for key in row:

        if key.lower().endswith('objectid'):
            key2 = 'objectid'
        else:
            key2 = fix_column_head(key)

        next_row[key2] = row[key]

    return next_row




if __name__ == '__main__':

    db_exec(conn, "drop table if exists dhcs_county_code_references")

    sql = """create table dhcs_county_code_references (
                 objectid int,
                 dhcs_county_code int,
                 county_name varchar(31),
                 county_region_code char(1),
                 county_region_description varchar(31),
                 fips_county_code int,
                 fips_state_county_code int,
                 north_south_indicator char(1))"""
    db_exec(conn, sql)

    f = ".csv"

    cols = ['objectid', 'dhcs_county_code', 'county_name', 'county_region_code', 
            'county_region_description', 'fips_county_code', 'fips_state_county_code', 
            'north_south_indicator']

    int_cols = ['objectid', 'dhcs_county_code', 'fips_county_code', 'fips_state_county_code']

    with open(f, newline='', encoding='latin1') as csvfile:
        rdr = csv.DictReader(csvfile)
        for row in rdr:

            try:

                row = fix_column_heads(row)

                # print(f"row: {row}")

                vals = list()

                for col in cols:
                    if col not in int_cols:
                        vals.append(fix(row[col]))
                    else:
                        vals.append(fix_int(row[col]))

                sql = f"insert into dhcs_county_code_references ("
                sql += ', '.join(cols)
                sql += ') values ('
                sql += ', '.join(vals)
                sql += ')'

                # print(f"sql: {sql}")

                db_exec(conn, sql)

            except:
                print(f"row: {row}")
                traceback.print_exc()

