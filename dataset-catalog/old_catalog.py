import argparse
import json
import sys

import requests
from sqlalchemy import create_engine

sys.path.append('..')

import config

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://{cfg['USR']}:{cfg['PWD']}@{cfg['HOST']}/{cfg['DB']}")
conn = engine.connect()


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--check-urls', action='store_true', help="check existence of dataset main page on web")

    return parser.parse_args()


def db_exec(eng, this_sql):
    # print(f"sql: {sql}")
    if this_sql.strip().startswith('select'):
        return [dict(row) for row in eng.execute(this_sql).fetchall()]
    else:
        # print(f"sql: {this_sql}")
        return eng.execute(this_sql)


def fix_key(start_key):
     return start_key.lower().replace(' ', '_').replace('/', '_').replace('-', '_')


def fix_value(start_value):
     return start_value.replace("'", "''").replace('%', '%%')


if __name__ == '__main__':

    args = arguments()

    #if args.check_urls:
    #    for row in db_exec(conn, "select dataset_url from catalog"):
    #        url = row['dataset_url']

    #        status = '000'

    #        try:
    #            r = requests.get(url)
    #            status = r.status_code
    #        except:
    #            traceback.print_exc()
    #            status='000'

    #        print(f"response: {status} url: {url}")
    #    quit()

    lengths = dict()
    types = dict()

    row_num = 0

    all_keys = list()

    with open('dataset-catalog.csv', newline='') as csvfile:
        rdr = csv.DictReader(csvfile)
        for row in rdr:
            row_num += 1

            if row_num == 1:
                for key1 in row.keys():
                    key2 = fix_key(key1)
                    all_keys.append(key2)
                    lengths[key2] = 0
                    types[key2] = None

            for key1 in row.keys():
                key2 = fix_key(key1)
                if len(row[key1]) > lengths[key2]:
                    lengths[key2] = len(row[key1])
                if row[key1].isnumeric():
                    if types[key2] is None:
                        types[key2] = 'int'
                else:
                    types[key2] = 'string'

    # print(f"row_num: {row_num}")
    # print(f"lengths: {lengths}")
    # print(f"types: {types}")
    # print("\n")

    cols = list()

    for key in all_keys:
        if types[key] == 'int':
            cols.append(f"{key} integer")
        else:
            if lengths[key] < 1000:
                cols.append(f"{key} varchar({lengths[key]})")
            else:
                cols.append(f"{key} text")

    db_exec(conn, "drop table if exists catalog")

    sql = f"create table catalog ({', '.join(cols)});"
    db_exec(conn, sql)

    with open('dataset-catalog.csv', newline='') as csvfile:
        rdr = csv.DictReader(csvfile)
        for row in rdr:
            sql = f"insert into catalog (_id) values ({row['_id']})"
            db_exec(conn, sql)

            for key1 in list(row.keys())[1:]:
                key2 = fix_key(key1)
                sql = f"update catalog set {key2} = '{fix_value(row[key1])}' where _id = {row['_id']}"
                # print(f"sql: {sql}")
                db_exec(conn, sql)

    sql = "insert into updates values ('dataset-catalog', unix_timestamp(now()))"
    db_exec(conn, sql)

