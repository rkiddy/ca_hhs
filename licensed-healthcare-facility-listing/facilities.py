import csv

import os

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

numbers = ["total_number_beds"]


def fix_num(start):
    return start.replace(',', '')


def fix_value(start):
    return start.replace("'", "''").replace('%', '%%')


if __name__ == '__main__':

    db_exec(conn, "drop table if exists licensed_facilities")

    sql = f"""
              create table licensed_facilities (
                  period char(8),
                  oshpd_id varchar(63),
                  facility_name varchar(127),
                  license_num varchar(63),
                  facility_level_desc varchar(63),
                  dba_address1 varchar(63),
                  dba_city varchar(63),
                  dba_zip_code varchar(10),
                  county_code varchar(2),
                  county_name varchar(63),
                  er_service_level_desc varchar(63),
                  total_number_beds int,
                  facility_status_desc varchar(63),
                  facility_status_date varchar(63),
                  license_type_desc varchar(63),
                  license_category_desc varchar(63),
                  latitude decimal(12,8),
                  longitude decimal(12,8))"""

    db_exec(conn, sql)

    for f in os.listdir():
        if f.startswith("licensed") and f.endswith(".csv"):

            fname = f.replace('2016-', '2016')

            period = fname.split('-')[-1][:4]
            if fname.split('-')[4] == 'december':
                period += "-end"
            if fname.split('-')[4] == 'june':
                period += "-mid"

            with open(f, newline='') as csvfile:
                rdr = csv.DictReader(csvfile)

                for row in rdr:

                    values = list()
                    values.append("NULL")

                    for key in row.keys():
                        col = key.lower()
                        if col in numbers:
                            if row[key] == '':
                                values.append("NULL")
                            else:
                                values.append(fix_num(row[key]))
                        else:
                            values.append(f"'{fix_value(row[key])}'")

                    sql = f"insert into licensed_facilities values ({', '.join(values)})"
                    db_exec(conn, sql)

            sql = f"update licensed_facilities set period = '{period}' where period is NULL"
            db_exec(conn, sql)

    sql = "insert into updates values ('licensed-healthcare-facility-listing', unix_timestamp(now()))"
    db_exec(conn, sql)


