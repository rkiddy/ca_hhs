
import csv

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


def fix_value(start):
    if not start:
        return 'NULL'
    else:
        start = start.replace("'", "''")
        return f"'{start}'"


if __name__ == '__main__':

    db_exec(conn, "drop table if exists authorized_wic_vendors")

    sql = """
          create table authorized_wic_vendors (
              vendor varchar(127), address1 varchar(127), address2 varchar(127),
              city varchar(31), zip varchar(10), county varchar(31),
              latitude varchar(13), longitude varchar(13))"""
    db_exec(conn, sql)

    f = "women-infants-and-children-wic-authorized-vendors-.csv"

    with open(f, newline='') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:
            next_row = dict()

            for key in list(row.keys()):
                key2 = key.strip().lower()
                if not row[key]:
                    next_row[key2] = None
                else:
                    next_row[key2] = row[key].strip()

            next_row['address1'] = next_row['address']
            next_row.pop('address')

            next_row['address2'] = next_row['second address']
            next_row.pop('second address')

            # print(f"next_row: {next_row}")

            # TODO why is this needed? The cvs reader does not automatically ignore this?
            if next_row['vendor'].endswith(' rows selected.'):
                continue

            col_names = list( next_row.keys())
            cols = ', '.join(col_names)

            values = list()
            for col in col_names:
                values.append(fix_value(next_row[col]))
            vals = ', '.join(values)

            try:
                sql = f"insert into authorized_wic_vendors ({cols}) values ({vals})"
                # print(f"sql: {sql}")
                db_exec(conn, sql)
            except:
                pass

    sql = "insert into updates values ('women-infants-and-children-wic-authorized-vendors', unix_timestamp(now()))"
    db_exec(conn, sql)

