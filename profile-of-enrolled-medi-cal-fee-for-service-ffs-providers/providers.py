
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
        return f"'{val}'"

def fix_int(val):
    if val is None or val == '':
        return 'NULL'
    else:
        return val


def fix_column_head(c):
    return c.split('(')[0].lower().replace(' ', '_')


if __name__ == '__main__':

    db_exec(conn, "drop table if exists medicaid_ffs_providers")

    sql = """
          create table medicaid_ffs_providers (
              objectid varchar(63),
              provider_source varchar(63),
              provider_number varchar(63),
              npi varchar(63),
              owner_number varchar(63),
              service_location_number varchar(63),
              legal_name varchar(63),
              enroll_status_eff_dt varchar(63),
              provider_taxonomy varchar(63),
              anc_provider_type varchar(63),
              fi_provider_type_cd varchar(63),
              fi_provider_type varchar(255),
              provider_license varchar(63),
              fi_provider_specialty_cd varchar(63),
              fi_provider_specialty varchar(63),
              out_of_state_indicator varchar(63),
              in_out_state varchar(63),
              address_attention varchar(63),
              address varchar(63),
              address2 varchar(63),
              city varchar(63),
              state varchar(63),
              zip varchar(63),
              zip_4 varchar(63),
              dhcs_county_cd varchar(63),
              fips_county_cd varchar(63),
              county varchar(63),
              latitude varchar(63),
              longitude decimal(12,8),
              countyname decimal(12,8))"""
    db_exec(conn, sql)

    files = [f for f in os.listdir() if f.startswith('medi_cal_ffs_provider_listing_')]

    with open(files[0], newline='', encoding='latin1') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            next_row = dict()

            for key in row:
                # garbage names in csv again.
                if key.endswith('OBJECTID'):
                    next_row['objectid'] = row[key]
                    continue
                next_row[fix_column_head(key)] = row[key]

            row = next_row

            # print(f"row: {row}")

            cols = list()
            vals = list()

            for key in row:
                cols.append(key)
                vals.append(fix(row[key]))

            sql = "insert into medicaid_ffs_providers ("
            sql += ', '.join(cols)
            sql += ') values ('
            sql += ', '.join(vals)
            sql += ')'

            # print(f"sql: {sql}")

            db_exec(conn, sql)

