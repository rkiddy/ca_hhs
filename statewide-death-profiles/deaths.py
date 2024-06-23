import csv

import os

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



def import_file(filename):

    with open('dataset-catalog.csv', newline='') as csvfile:
        rdr = csv.DictReader(csvfile)
        for row in rdr:
            pass


columns = [
    "Year",
    "Month",
    "Geography_Type",
    "Strata",
    "Strata_Name",
    "Cause",
    "Cause_Desc",
    "ICD_Revision",
    "Count",
    "Annotation_Code",
    "Annotation_Desc",
    "Data_Extract_Date",
    "Data_Revision_Date"]


numbers = ["Year", "Month", "Count"]

longs = ["Strata_Name", "Cause_Desc", "Annotation_Desc"]


def fix_value(start):
    return start.replace("'", "''").replace('%', '%%')


if __name__ == '__main__':

    db_exec(conn, "drop table if exists deaths")

    cols = list()
    for c in columns:
        if c in numbers:
            cols.append(f"{c.lower()} int")
        else:
            if c in longs:
                cols.append(f"{c.lower()} varchar(63)")
            else:
                cols.append(f"{c.lower()} varchar(31)")

    sql = f"create table deaths ({', '.join(cols)})"
    db_exec(conn, sql)

    for f in os.listdir():
        if f.endswith(".csv") and not f.startswith("data"):
            
            with open(f, newline='') as csvfile:
                rdr = csv.DictReader(csvfile)
                                
                for row in rdr:

                    values = list()
                    for col in columns:
                        if col in row:
                            if col in numbers:
                                if row[col] == '':
                                    values.append("NULL")
                                else:
                                    values.append(row[col])
                            else:
                                values.append(f"'{fix_value(row[col])}'")
                        else:
                            values.append("NULL")

                    sql = f"insert into deaths values ({', '.join(values)})"
                    db_exec(conn, sql)

    sql = "insert into updates values ('statewide-death-profiles', unix_timestamp(now()))"
    db_exec(conn, sql)

