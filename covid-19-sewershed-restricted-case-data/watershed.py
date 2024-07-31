
import csv
import traceback

from sqlalchemy import create_engine

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

if __name__ == '__main__':

    db_exec(conn, "drop table if exists watershed_cases")

    sql = """
          create table watershed_cases (
              episode_date char(10),
              short_name varchar(255),
              full_name varchar(255),
              area_type varchar(31),
              masked char(1),
              cases varchar(31),
              cum_cases int)"""
    db_exec(conn, sql)

    sql = """
          create table watershed_sites (
              short_name varchar(255),
              full_name varchar(255),
              area_type varchar(31))"""
    db_exec(conn, sql)

    with open('covid-19-sewershed-restricted-case-data.csv', newline='', encoding='latin1') as csvfile:
        rdr = csv.DictReader(csvfile)

        # cols: date,Area,Label_Name,Area_type,Cases,Cumulative_cases
        #
        for row in rdr:
            sql = f"""insert into watershed_cases
                      (episode_date, short_name, full_name, area_type, cases, cum_cases)
                      values
                      ({fix(row['date'])}, {fix(row['Area'])}, {fix(row['Label_Name'])},
                       {fix(row['Area_type'])}, {fix(row['Cases'])}, {fix(row['Cumulative_cases'])})"""

            db_exec(conn, sql)

    sqls = [
        "alter table watershed_sites add primary key (short_name, full_name, area_type)",
        "insert ignore info watershed_sites select short_name, full_name, area_type from watershed_cases",
        "alter table watershed_sites add column pk int first",
        "update watershed_sites cross join (select @pk:=0) as init set watershed_sites.pk=@pk:=@pk+1",
        "alter table watershed_sites change column short_name short_name varchar(255) default NULL",
        "alter table watershed_sites change column full_name full_name varchar(255) default NULL",
        "alter table watershed_sites change column area_type area_type varchar(255) default NULL",
        "update watershed_sites set full_name = NULL where full_name = ''",
        "alter table watershed_sites drop primary key",
        "alter table watershed_sites add primary key (pk)",
        "alter table watershed_cases add column site_pk int after episode_date",
        "update watershed_cases c1, watershed_sites s1 set c1.site_pk = s1.pk where c1.short_name = s1.short_name",
        "alter table watershed_cases drop columns short_name",
        "alter table watershed_cases drop column full_name",
        "alter table watershed_cases drop column area_type"]

    for sql in sqls:
        db_exec(conn, sql)

