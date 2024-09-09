
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


def db_exec_sql(sql):
    return db_exec(conn, sql)


def fix(start):
    if not start:
        return 'NULL'
    else:
        start = start.replace("'", "''").replace('%', '%%')
        return f"'{start}'"


def fix_int(start):
    if not start:
        return 'NULL'
    else:
        return start.replace(',', '')


def fix_date(start):
    if start is None or start == '':
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


def fix_col_head(start):
    return fix_first_key(start.lower().replace(' ', '_').replace('-', '_').replace('/', '_'))


def fix_col_heads(start):
    # print(f"fix_col_heads: start: {start}")
    return [fix_col_head(c) for c in start]


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


def create_tables(tables, types={}):

    for table in tables:

        file = tables[table]

        cols = list()
        lengths = dict()

        with open(file, newline='', encoding='latin1') as csvfile:
            rdr = csv.DictReader(csvfile)

            # read through the file once to create the table. Wasteful? Maybe, but more sure.
            #
            for row in rdr:

                next_row = dict()
                for key in row:
                    next_row[fix_col_head(key)] = row[key]
                row = next_row

                if len(cols) == 0:

                    cols = list(row.keys())
                    for col in cols:
                        lengths[col] = 0

                for key in row:
                    if len(row[key]) > lengths[key]:
                        lengths[key] = len(row[key])

        col_defs = list()
        for col in lengths:
            if table in types and col in types[table]:
                col_defs.append(f"{col} {types[table][col]}")
            else:
                col_defs.append(f"{col} varchar({lengths[col]})")

        sql = f"create table {table} ("
        sql += ', '.join(col_defs)
        sql += ")"

        print(f"\ncreating table {table}...")

        db_exec(conn, f"drop table if exists {table}")

        # print(f"sql: {sql}")
        db_exec(conn, sql)


def read_data(tables, types={}):

    # print(f"read_data: types: {types}")

    for table in tables:

        if isinstance(tables[table], list):
            files = tables[table]
        else:
            files = [tables[table]]

        # print(f"files: {files}")

        cols = None

        num = 0

        for f in files:

            with open(f, newline='', encoding='latin1') as csvfile:
                rdr = csv.DictReader(csvfile)

                for row in rdr:

                    if cols is None:
                        cols = fix_col_heads(list(row.keys()))
                        # print(f"read_data: fixed cols: {cols}")

                    next_vals = list()

                    for col in row:

                        fcol = fix_col_head(col)

                        val = None

                        # print(f"is {table} in types and is {col} in {types[table]}?")
                        if table in types and fcol in types[table]:
                            if types[table][fcol] == 'int' or types[table][fcol].startswith('decimal'):
                                val = fix_int(row[col])
                            if types[table][fcol] == 'date':
                                val = fix_date(row[col])
                            if types[table][fcol] == 'text':
                                val = fix(row[col])
                        else:
                            val = fix(row[col])

                        next_vals.append(val)

                    sql = f"insert into {table} ({', '.join(cols)}) values ({', '.join(next_vals)})"
                    # print(f"sql: {sql}")
                    db_exec(conn, sql)
                    num += 1

            print(f"\nfile: {f} -> table: {table} # {num}")


if __name__ == '__main__':
    pass
