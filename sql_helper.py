
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


def db_exec_sql(sql):
    return db_exec(conn, sql)


def fix(start):
    if not start:
        return 'NULL'
    else:
        start = str(start).replace("'", "''").replace('%', '%%').replace('\\', '')
        return f"'{start}'"


def fix_int(start):
    if not start:
        return 'NULL'
    else:
        return str(start.replace(',', ''))


def fix_date(start):
    if start is None or start == 'None' or start == '':
        return 'NULL';
    parts = start.split(' ')[0].split('/')
    if len(parts) != 3:
        parts = start.split(' ')[0].split('-')
    if len(parts) != 3:
        raise Exception(f"Bad date format for date: {start}")
    if len(parts[2]) == 4 and len(parts[0]) <= 2 and len(parts[1]) <= 2:
        year = parts[2]
        mon = str(parts[0]).zfill(2)
        dat = str(parts[1]).zfill(2)
    elif len(parts[0]) == 4 and len(parts[1]) <= 2 and len(parts[2]) <= 2:
        year = parts[0]
        mon = str(parts[1]).zfill(2)
        dat = str(parts[1]).zfill(2)
    else:
        raise Exception(f"Cannot understand date format of value: {start}")
    return f"'{year}-{mon}-{dat}'"


def fix_col_head(start, replaces={}):
    col = fix_first_key(start.lower().replace(' ', '_').replace('-', '_').replace('/', '_').replace('+_', '_plus_'))
    for key in replaces:
        col = col.replace(key, replaces[key])
    return col


def fix_col_heads(start, replaces={}):
    # print(f"fix_col_heads: start: {start}")
    return [fix_col_head(c,replaces) for c in start]


def fix_first_key(key):
    first = list(key)
    offset = 0
    for idx in range(len(first)):
        if ord(first[idx]) > 163:
            offset = idx

    if offset == 0:
        return key
    else:
        return key[offset+1:]


if __name__ == '__main__':
    pass
