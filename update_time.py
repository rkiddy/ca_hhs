
import argparse
import time

from sqlalchemy import create_engine

from time import time
import config

import os

cfg = config.cfg()

metadb = create_engine(f"mysql+pymysql://{cfg['META_USR']}:{cfg['META_PWD']}@{cfg['META_HOST']}/{cfg['META_DB']}")
conn = metadb.connect()


def db_exec(eng, this_sql):
    # print(f"sql: {sql}")
    if this_sql.strip().startswith('select'):
        return [dict(row) for row in eng.execute(this_sql).fetchall()]
    else:
        # print(f"sql: {this_sql}")
        return eng.execute(this_sql)
        foo = intput()


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--result')
    return parser.parse_args()


if __name__ == '__main__':

    args = arguments()

    if args.result is None:
        result = -1
    else:
        result = args.result

    id = os.getcwd().split('/')[-1]
    sql = f"""insert into updates (ds_pk, updated, result)
              values
              ((select pk from datasets where name = '{id}'), {int(time())}, {result})"""
    db_exec(metadb, sql)

    if result == '0':
        sql = f"update datasets set updated = {int(time())} where name = '{id}'"
        db_exec(metadb, sql)

