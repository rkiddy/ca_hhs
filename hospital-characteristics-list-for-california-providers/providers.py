
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
        start = str(start).strip().replace(',', '').replace('$', '')
        return start


def fix_boolean(start):
    if start is None or start == '':
        return 'NULL'
    if start == 'Yes':
        return "1"
    if start == 'No':
        return "0"
    return str(start)


def fix_date(start):
    if start is None:
        return 'NULL';
    parts = start.split('/')
    year = parts[2]
    mon = str(parts[0]).zfill(2)
    dat = str(parts[0]).zfill(2)
    return f"'{year}-{mon}-{dat}'"


def fix_col_head(start):
     head = start.lower().replace('\n', '').replace(' ', '_').replace('-', '_').replace('/', '_').replace('%', 'pct')
     if head == 'ffy_2019_wage_index_value_(adjusted_for_ca_neutrality_factor)':
         head = 'ffy_2019_wage_index_value_adjusted'
     return head


numbers = ['sfy_2019_20_cost_to_charge_ratio_pct',
           'ffy_2019_wage_index_value',
           'ffy_2019_wage_index_value_adjusted',
           'sfy_2019_20_unadjusted_statewide_base_rate',
           'sfy_2019_20_wage_adjusted_statewide_base_rate',
           'sfy_2019_20_rehab_rate',
           'sfy_2019_20_admin_2_190_rate',
           'sfy_2019_20_admin_2_199_rate']

booleans = ['designated_nicu_as_defined_by_dhcs',
            'dph', 'ndph',
            'oshpd_rural_hospital',
            'dhcs_designated_remote_rural']


if __name__ == '__main__':

    db_exec(conn, "drop table if exists hospital_characteristics")

    sql = """create table hospital_characteristics (
                 oshpd_id char(9),
                 oshpd_provider_name varchar(255),
                 designated_nicu_as_defined_by_dhcs varchar(15),
                 dph varchar(15),
                 ndph varchar(15),
                 oshpd_rural_hospital varchar(15),
                 dhcs_designated_remote_rural varchar(15),
                 sfy_2019_20_cost_to_charge_ratio_pct decimal(8,6),
                 ffy_2019_wage_index_value decimal(8,6),
                 ffy_2019_wage_index_value_adjusted decimal(8,6),
                 sfy_2019_20_unadjusted_statewide_base_rate int,
                 sfy_2019_20_wage_adjusted_statewide_base_rate int,
                 sfy_2019_20_rehab_rate int,
                 sfy_2019_20_admin_2_190_rate decimal(7,2),
                 sfy_2019_20_admin_2_199_rate decimal(7,2))"""
    db_exec(conn, sql)

    num = 0

    with open('hospital-characteristics-list-for-california-providers-in-state-fiscal-year-2019-20.csv', newline='') as csvfile:
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
                elif key in booleans:
                    vals.append(fix_boolean(row[key]))
                else:
                    vals.append(fix(row[key]))

            sql = "insert into hospital_characteristics values ("
            sql += ','.join(vals)
            sql += ")"

            # print(f"sql: {sql}")
            db_exec(conn, sql)
            num += 1

    db_exec(conn, "delete from hospital_characteristics where oshpd_id is NULL")

    print(f"hospital_characteristics # {num}")

