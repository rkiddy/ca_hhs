
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
    if start == 'Table':
        return 'table_name'
    else:
        return start.lower().replace('-', '_').replace('/', '_')


decimals = ['Denominator_Average',
            'Numerator_Average',
            'Rate/Percentage',
            'Age-Adjusted_Rate',
            'Lower_Confidence_Limit',
            'Upper_Confidence_Limit']

numbers = ['Publication_Year',
           'Rank_Order',
           'Denominator_Total',
           'Denominator_Year_Period',
           'Numerator_Total',
           'Rate_Multiplier',
           'Healthy_People_Decade',
           'Healthy_People_Objective_Target']

if __name__ == '__main__':

    db_exec(conn, "drop table if exists county_health_status_profiles")

    sql = """create table county_health_status_profiles (
                 publication_year int,
                 table_name varchar(63),
                 health_indicator_desc varchar(255),
                 strata varchar(63),
                 strata_name varchar(63),
                 county varchar(63),
                 rank_order int,
                 denominator_total int,
                 denominator_average decimal(10,2),
                 denominator_label varchar(63),
                 denominator_year_period int,
                 numerator_total int,
                 numerator_average decimal(10,2),
                 numerator_label varchar(63),
                 numerator_year_period varchar(63),
                 rate_multiplier int,
                 rate_percentage decimal(10,2),
                 rate_percentage_label varchar(63),
                 age_adjusted_rate decimal(10,2),
                 age_adjusted_rate_label varchar(63),
                 lower_confidence_limit decimal(10,2),
                 upper_confidence_limit decimal(10,2),
                 healthy_people_decade int,
                 healthy_people_objective_number varchar(63),
                 healthy_people_objective_target int,
                 healthy_people_objective_met char(1),
                 denominator_annotation_code varchar(63),
                 numerator_annotation_code varchar(63),
                 rates_annotation_code varchar(63),
                 annotation_desc varchar(255))"""
    db_exec(conn, sql)

    files = [r for r in os.listdir() if r.endswith('csv') and r.startswith('county')]

    # print(f"files: {files}")

    for f in files:

        print(f"file: {f}")

        num = 0

        with open(f, newline='') as csvfile:
            rdr = csv.DictReader(csvfile)

            for row in rdr:

                # print(f"row: {row}")

                next_row = dict()

                for key in row.keys():
                    key2 = fix_col_head(key)
                    if key in numbers:
                        next_row[key2] = fix_int(row[key])
                    elif key in decimals:
                        # the int fixes should work for this also.
                        next_row[key2] = fix_int(row[key])
                    else:
                        next_row[key2] = fix(row[key])

                # print(f"next_row: {next_row}")

                row = next_row

                col_names = list(row.keys())
                cols = ', '.join(col_names)

                values = list()
                for key in row.keys():
                    values.append(next_row[key])
                vals = ', '.join(values)
    
                try:
                    sql = f"insert into county_health_status_profiles ({cols}) values ({vals})"
                    # print(f"sql: {sql}")
                    db_exec(conn, sql)
                    num += 1
                except:
                    traceback.print_exc()
                    quit()

    sql = "insert into updates values ('county-health-status-profiles', unix_timestamp(now()))"
    db_exec(conn, sql)

    print(f"dashboard rows # {num}")

