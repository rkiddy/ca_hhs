
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


def fix_col_head(start):
    return start.lower().replace('-', '_').replace('/', '_')


numbers = ['ind_id', 'reportyear', 'race_eth_code']


if __name__ == '__main__':

    db_exec(conn, "drop table if exists voters_region_county_crosswalk")

    sql = """create table voters_region_county_crosswalk (
                 county_fips char(5),
                 county varchar(63),
                 mpo_region varchar(63),
                 mpo_region_code int)"""
    db_exec(conn, sql)

    db_exec(conn, "drop table if exists voters_registrations")

    sql = """create table voters_registrations (
                 ind_id int,
                 ind_definition varchar(127),
                 reportyear int,
                 race_eth_code int,
                 race_eth_name varchar(31),
                 geotype varchar(5),
                 geotypevalue varchar(31),
                 geoname varchar(63),
                 county_nam varchar(63),
                 county_fips varchar(31),
                 region_name varchar(63),
                 region_code varchar(15),
                 strata_one_code varchar(15),
                 strata_one_name varchar(31),
                 strata_two_code varchar(15),
                 strata_two_name varchar(31),
                 numerator varchar(63),
                 denominator varchar(63),
                 estimate varchar(63),
                 ll_95ci varchar(63),
                 ul_95ci varchar(63),
                 se varchar(63),
                 rse varchar(63),
                 ca_rr varchar(63),
                 version varchar(63),
                 vap varchar(63))"""

    db_exec(conn, sql)

    num = 0

    with open('metropolitan-planning-organization-mpo-region-to-county-crosswalk.csv', newline='') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            next_row = dict()
            for key in row:
                next_row[fix_col_head(key)] = row[key]

            row = next_row
            # print(f"row: {row}")

            sql = f"""insert into voters_region_county_crosswalk values
                      ({fix(row['county_fips'])}, {fix(row['county'])},
                       {fix(row['mpo_region'])}, {fix_int(row['mpo_region_code'])})"""
            db_exec(conn, sql)
            num += 1

    print(f"voters_region_county_crosswalk # {num}")

    num = 0

    with open('voter-registration-2016-and-2018.csv', newline='') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            if 'END OF TABLE' in str(row):
                continue

            next_row = dict()
            for key in row:
                next_row[fix_col_head(key)] = row[key]

            row = next_row
            # print(f"row: {row}")

            vals = list()
            for key in row:
                key2 = fix_col_head(key)
                if key in numbers:
                    vals.append(fix_int(row[key]))
                else:
                    vals.append(fix(row[key]))

            sql = "insert into voters_registrations values ("
            sql += ','.join(vals)
            sql += ")"

            # print(f"sql: {sql}")
            db_exec(conn, sql)
            num += 1

    print(f"voters_registrations # {num}")

