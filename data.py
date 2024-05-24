
from dotenv import dotenv_values

import config

from sqlalchemy import create_engine, inspect

cfg = dotenv_values(".env")

con_engine = create_engine(
    f"mysql+pymysql://{cfg['USR']}:{cfg['PWD']}@{cfg['HOST']}/{cfg['DB']}"
)
conn = con_engine.connect()


def db_exec(engine, sql):
    # print(f"sql: {sql}")
    if sql.strip().startswith("select"):
        return [dict(r) for r in engine.execute(sql).fetchall()]
    else:
        return engine.execute(sql)


def fixes(row):
    row['created'] = row['created'][:10]
    row['updated'] = row['updated'][:10]
    row['tags'] = row['tags'].replace(',', ', ')
    return row


def hhs_main():
    context = dict()
    datasets = list()
    for row in db_exec(conn, "select * from catalog"):
        datasets.append(fixes(row))
    context['datasets'] = datasets
    return context


def hhs_detail(id_num):
    context = dict()
    sql = f"select * from catalog where _id = {id_num}"
    dataset = db_exec(conn, sql)
    context['dataset'] = fixes(dataset[0])
    context['id'] = id_num
    return context


def next(id_num):
    next_id = db_exec(conn, f"select _id from catalog where _id > {id_num} order by _id limit 1")
    if not next_id or len(next_id) == 0:
        return None
    else:
        return next_id[0]['_id']


def prev(id_num):
    prev_id = db_exec(conn, f"select _id from catalog where _id < {id_num} order by _id desc limit 1")
    if not prev_id or len(prev_id) == 0:
        return None
    else:
        return prev_id[0]['_id']

