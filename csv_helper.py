
import csv
import os
import re
import traceback

import config
from sqlalchemy import create_engine

import sql_helper

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://{cfg['LOC_USR']}:{cfg['LOC_PWD']}@localhost/ca_hhs")
conn = engine.connect()


def db_exec(eng, this_sql):
    return sql_helper.db_exec(engine, this_sql)


def db_exec_sql(sql):
    """Assume the existing connection, because this is what happens anway."""
    return sql_helper.db_exec(conn, sql)


def db_exec_many(conn, prefix, suffixes):
    return sql_helper.db_exec_many(conn, prefix, suffixes)


def db_exec_many_sql(prefix, suffixes):
    return sql_helper.db_exec_many(conn, prefix, suffixes)


def fix(start):
    return sql_helper.fix(start)


def fix_int(start):
    return sql_helper.fix_int(start)


def fix_date(start):
    return sql_helper.fix_date(start)


def fix_col_head(start, replaces={}):
    return sql_helper.fix_col_head(start, replaces)


def uniqify_columns(cols):
    return sql_helper.uniqify(cols)


def fix_col_heads(start, replaces={}):
    return sql_helper.fix_col_heads(start, replaces)


def fix_first_key(key):
    return sql_helper.fix_first_key(key)


def fix_empty_col_heads(name1):
    return sql_helper.fix_empty_col_heads(name1)


def fix_file(name1):
    """Some of the csv files have bad column names because the lines looks to split. What
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


def find_column_lengths(csv_rdr):

    found = dict()

    for row in csv_rdr:
        for key in row:
            if key not in found:
                found[key] = -1
            if row[key] is not None and len(row[key]) > found[key]:
                found[key] = len(row[key])

    return found


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

        lengths = dict()

        csvfile = open(file, newline='', encoding='latin1')

        line = csvfile.readline().strip()

        # See https://dnmtechs.com/splitting-quoted-strings-in-python-3-ignoring-separators/
        # result = re.split(r',(?=(?:[^"]*"[^"]*")*[^"]*$)', string)

        cols = fix_col_heads(re.split(r',(?=(?:[^"]*"[^"]*")*[^"]*$)', line), {})
        csvfile.close()

        first_read = False

        with open(file, newline='', encoding='latin1') as csvfile:
            rdr = csv.DictReader(csvfile, fieldnames=cols)

            lengths = find_column_lengths(rdr)

        # print(f"types: {types}\n")

        col_defs = list()
        # print(f"lengths: {lengths}")

        max_lengths = [len(name) for name in cols]
        if max(max_lengths) > 64:
            print(f"We have BAD COLUMN NAMES in: {cols}")
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

            csvfile = open(f, newline='', encoding='latin1')

            line = csvfile.readline().strip()
 
            # See: https://dnmtechs.com/splitting-quoted-strings-in-python-3-ignoring-separators/
            # result = re.split(r',(?=(?:[^"]*"[^"]*")*[^"]*$)', string)

            cols = fix_col_heads(re.split(r',(?=(?:[^"]*"[^"]*")*[^"]*$)', line), {})
            csvfile.close()

            with open(f, newline='', encoding='latin1') as csvfile:
                rdr = csv.DictReader(csvfile, fieldnames=cols)

                next(rdr) # do not pull the column name as data...

                for row in rdr:

                    if '' in row:
                        row.pop('')
                    if None in row:
                        row.pop(None)

                    # TODO I think I am not using this...
                    if start_row is not None and rdr.line_num < start_row:
                        continue

                    next_vals = list()

                    for col in row:

                        val = None

                        # print(f"is {table} in types and is {col} in {types[table]}?")
                        if table in types and col in types[table]:
                            if types[table][col] == 'int' or types[table][col].startswith('decimal'):
                                val = fix_int(row[col])
                            if types[table][col] == 'date':
                                val = fix_date(row[col])
                            if types[table][col] == 'text':
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
