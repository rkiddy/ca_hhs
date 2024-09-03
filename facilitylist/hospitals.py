
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
    if not start or start == 'NullValue':
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
    if start is None or start == '':
        return 'NULL';
    parts = start.split(' ')[0].split('/')
    year = parts[2]
    mon = str(parts[0]).zfill(2)
    dat = str(parts[0]).zfill(2)
    return f"'{year}-{mon}-{dat}'"


def fix_col_head(start):
     head = start.lower().replace('\n', '').replace(' ', '_').replace('-', '_').replace('/', '_')
     return head


numbers = ['x', 'y', 'id', 'facilotynbr',
           'senatedistrict', 'assemblydistrict', 'congressionaldistrict', 'alirts_facility_id']

dates = ['date_opened', 'date_closed']

if __name__ == '__main__':

    db_exec(conn, "drop table if exists facility_list")

    sql = """create table facility_list (
                 x decimal(16,8),
                 y decimal(16,8),
                 id int,
                 facilitynbr int,
                 facilitystatus varchar(63),
                 facilityname varchar(255),
                 licensetype varchar(63),
                 streetnbr varchar(63),
                 streetname varchar(63),
                 city varchar(63),
                 state varchar(63),
                 zip varchar(63),
                 county varchar(63),
                 oblicensenbr varchar(63),
                 obbusinessname varchar(255),
                 obfname varchar(63),
                 oblname varchar(63),
                 obtitle varchar(63),
                 obaddress varchar(63),
                 obaddress2 varchar(63),
                 obcity varchar(63),
                 obstate varchar(63),
                 obzip varchar(63),
                 obphone1 varchar(63),
                 obphone2 varchar(63),
                 obfax varchar(63),
                 date_opened varchar(63),
                 date_closed varchar(63),
                 latitude varchar(63),
                 longitude varchar(63),
                 addr1 varchar(63),
                 addr2 varchar(63),
                 f28 varchar(63),
                 bing varchar(63),
                 type_ varchar(63),
                 ffstationnetwork varchar(63),
                 ffstationnbr varchar(63),
                 stationnetwork varchar(63),
                 stationnbr varchar(63),
                 geographic_region varchar(63),
                 aco varchar(63),
                 aco_name varchar(63),
                 aco_phonenbr varchar(63),
                 dse varchar(63),
                 dse_name varchar(63),
                 dse_phonenbr varchar(63),
                 field_flso varchar(63),
                 flso_name varchar(63),
                 flso_phonenbr varchar(63),
                 senatedistrict int,
                 assemblydistrict int,
                 congressionaldistrict int,
                 alirts_facility_id int,
                 rco varchar(63),
                 rco_name varchar(63),
                 rco_phonenbr varchar(63),
                 pt1 varchar(63),
                 pt1fullname varchar(63),
                 pt2 varchar(63),
                 pt2fullname varchar(63),
                 responsible_region varchar(63),
                 proposedbldgs varchar(1),
                 objectid int)"""
    db_exec(conn, sql)

    num = 0

    with open('.csv', newline='') as csvfile:
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
                elif key in dates:
                    vals.append(fix_date(row[key]))
                else:
                    vals.append(fix(row[key]))

            sql = "insert into facility_list values ("
            sql += ','.join(vals)
            sql += ")"

            # print(f"sql: {sql}")
            db_exec(conn, sql)
            num += 1


    print(f"facility_list # {num}")

