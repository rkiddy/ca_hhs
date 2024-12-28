
import csv
import os
import traceback

import config
from sqlalchemy import create_engine

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://ray:__zekret__@localhost/ca_hhs")
conn = engine.connect()


def db_exec(eng, this_sql):
    """Helpful method, could be put into a module or something easier to manage."""
    # print(f"sql: {sql}")
    if this_sql.strip().startswith('select'):
        return [dict(row) for row in eng.execute(this_sql).fetchall()]
    else:
        # print(f"sql: {this_sql}")
        return eng.execute(this_sql)


def db_exec_sql(sql):
    """Assume the existing connection, because this is what happens anway."""
    return db_exec(conn, sql)


def db_exec_many(conn, prefix, suffixes):
    """Execute a large bunch of sql statements but if there is an error,
       fall back to doing one at a time. This makes large sets of insertions massively faster."""

    done = False
    try:
        sql = f"{prefix} {',\n'.join(suffixes)}"
        db_exec(conn, sql)
        done = True
    except:
        print("EXCEPTION:")

    if not done:
        try:
            for suffix in suffixes:
                sql = f"{prefix} {suffix}"
                db_exec(conn, sql)
        except:
            print("EXCEPTION:")
            traceback.print_exc()


def db_exec_many_sql(prefix, suffixes):
    return db_exec_many(conn, prefix, suffixes)


def fix(start):
    """For putting a string into a query or insert SQL statement."""
    if not start:
        return 'NULL'
    else:
        start = start.replace("'", "''").replace('%', '%%').replace('\\', '')
        return f"'{start}'"


def fix_int(start):
    """For putting an integer or other number into a query or insert SQL statement."""
    if not start:
        return 'NULL'
    else:
        return start.replace(',', '')


def fix_date(start):
    """Dates often occur in other forms, like MM-DD-YYYY, and this turns these into a
       proper mysql date string."""

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
        dat = str(parts[2]).zfill(2)
    else:
        raise Exception(f"Cannot understand date format of value: {start}")
    return f"'{year}-{mon}-{dat}'"


known_replacements = {'system': 'system_name',
                      'rank': 'rank_name',
                      'procedure': 'procedure_name',
                      'condition': 'condition_name'}

def fix_col_head(start, replaces={}):
    """Many of the column headers in these files are not compatible with mysql databases."""

    col = fix_first_key(start)

    for key in replaces:
        col = col.replace(key, replaces[key])

    col = col.lower()

    for key in known_replacements:
        col = col.replace(key, known_replacements[key])

    while col.startswith(' '):
        col = col[1:]
    while col.endswith(' '):
        col = col[:-1]
    col = col.replace(' ', '_')
    col = col.replace('-', '_')
    col = col.replace('(', '')
    col = col.replace(')', '')
    col = col.replace('/', '_')
    col = col.replace(',', '_')
    col = col.replace('.', '_')
    col = col.replace('+_', '_plus_')
    col = col.replace('#', 'num')
    col = col.replace('%', 'pct')
    col = col.replace('?', '')
    col = col.replace('&', '')
    col = col.replace('*', '')
    col = col.replace('>=', '_ge_')
    col = col.replace('<=', '_le_')
    col = col.replace('"', '')
    col = col.replace("'", '')
    col = col.replace(':', '')
    col = col.replace('>', '_gt_')
    col = col.replace('<', '_lt_')
    col = col.replace('=', '_eq_')
    col = col.replace('^', '')

    col = col.replace('__', '_')

    for key in replaces:
        col = col.replace(key, replaces[key])

    if len(col) > 64:
        col = col[:63]

    return col


def fix_col_heads(start, replaces={}):
    # print(f"fix_col_heads: start: {start}")
    return [fix_col_head(c,replaces) for c in start]


def fix_first_key(key):
    """At times, just the first column header in a spreadsheet has an anomolous character at its start."""

    first = list(key)
    offset = 0
    for idx in range(len(first)):
        if ord(first[idx]) > 163:
            offset = idx

    if offset == 0:
        return key
    else:
        return key[offset+1:]


def fix_file(name1):
    """Some of the excel files have bad column names because the lines looks to split. What
       is actually happening is that the column heads have a '\n' chracter in them, when a
       real end-of-line is a '\r\n' pair. This function fixes a file by removing lone '\n'
       characters."""

    last = None

    name2 = f"{name1}__"

    w = open(name2, 'wb')

    with open(name1, 'rb') as f:
        while 1:
            curr = f.read(1)

            # we want to keep '\r\n' pairs, but eliminiate other instances of '\n'.
            #
            if not curr:
                break
            if last:
                w.write(last)
            if ord(curr) != 10 or (last and ord(last) == 13):
                last = curr
            else:
                last = bytes(' ', "utf-8")

        w.write(last)

    w.close()

    os.remove(name1)
    os.rename(name2, name1)


def create_tables(tables, types={}, replaces={}, length_pad=0, verbose=False):
    """Do the right thing for most csv files based on the column header strings found.
       Also determines the optimal length for a string column, though this process reads
       all of the data and so is probably not optimal and is probably doable in a smarter
       way."""

    created = list()

    for table in tables:

        file = tables[table]
        if verbose:
            print(f"file: {file}")

        cols = list()
        lengths = dict()

        with open(file, newline='', encoding='latin1') as csvfile:
            rdr = csv.DictReader(csvfile)

            # read through the file once to create the table. Wasteful? Maybe, but more sure.
            #
            for row in rdr:
                if '' in row:
                    row.pop('')
                if None in row:
                    row.pop(None)

                next_row = dict()
                for key in row:
                    next_row[fix_col_head(key, replaces)] = row[key]
                row = next_row
                if verbose:
                    print(f"row: {row}")

                if len(cols) == 0:

                    cols = list(row.keys())
                    for col in cols:
                        lengths[col] = 0
                    if verbose:
                        print(f"starting columns: {col}")

                for key in row:
                    try:
                        if len(row[key]) > lengths[key]:
                            lengths[key] = len(row[key])
                    except:
                        if verbose:
                            print(f"bad row: {row}")

        # print(f"types: {types}\n")

        col_defs = list()
        # print(f"lengths: {lengths}")

        names_too_long = list()
        for key in lengths:
            if len(key) > 64:
                names_too_long.append(key)

        if len(names_too_long) > 0:
            print(f"table: {table}")
            print(f"BAD COLUMN NAMES: {names_too_long}")
            continue

        created.append(table)

        for col in lengths:
            # print(f"col: {col}")
            if table in types and col in types[table]:
                col_defs.append(f"{col} {types[table][col]}")
                # print("MATCH")
            else:
                col_defs.append(f"{col} varchar({lengths[col] + length_pad})")
                # print("NO match")

        sql = f"create table {table} ("
        sql += ', '.join(col_defs)
        sql += ")"

        print(f"\ncreating table {table}...")

        db_exec(conn, f"drop table if exists {table}")

        # print(f"sql: {sql}")
        db_exec(conn, sql)

    return created


def read_data(tables, types={}, replaces={}, start_row=None, bucket=1000):
    """Reads CSV data and puts it into a table."""

    # print(f"read_data: types: {types}")

    for table in tables:

        if isinstance(tables[table], list):
            files = tables[table]
        else:
            files = [tables[table]]

        # print(f"files: {files}")

        cols = None
        prefix = None

        num = 0

        for f in files:

            print(f"\nfile: {f} -> ", end='')

            sqls = list()

            with open(f, newline='', encoding='latin1') as csvfile:
                rdr = csv.DictReader(csvfile)

                for row in rdr:

                    if '' in row:
                        row.pop('')
                    if None in row:
                        row.pop(None)

                    if cols is None:
                        cols = fix_col_heads(list(row.keys()), replaces)
                        # print(f"read_data: fixed cols: {cols}")

                    if start_row is not None and rdr.line_num < start_row:
                        continue

                    next_vals = list()

                    for col in row:

                        fcol = fix_col_head(col, replaces)

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

                    if not prefix:
                        prefix = f"insert into {table} ({', '.join(cols)}) values"

                    sqls.append(f"({', '.join(next_vals)})")

                    if len(sqls) >= bucket:
                        db_exec_many(conn, prefix, sqls)
                        sqls.clear()

                    # When we were doing this one at a time.
                    #
                    # sql = f"insert into {table} ({', '.join(cols)}) values ({', '.join(next_vals)})"
                    # print(f"sql: {sql}")
                    # db_exec(conn, sql)

                    num += 1

            if len(sqls) > 0:
                db_exec_many(conn, prefix, sqls)

            print(f"table: {table} # {num}")


if __name__ == '__main__':
    pass
