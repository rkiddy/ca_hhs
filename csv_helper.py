
import csv
import os
import re
import traceback
from datetime import datetime as dt
from zipfile import ZipFile

from sqlalchemy import create_engine

import config
import sql_helper

cfg = config.cfg()

maindb = create_engine(f"mysql+pymysql://{cfg['MAIN_USR']}:{cfg['MAIN_PWD']}@{cfg['MAIN_HOST']}/{cfg['MAIN_DB']}")
maindb.connect()

metadb = create_engine(f"mysql+pymysql://{cfg['META_USR']}:{cfg['META_PWD']}@{cfg['META_HOST']}/{cfg['META_DB']}")
metadb.connect()


def db_exec(eng, this_sql):
    return sql_helper.db_exec(eng, this_sql)


def db_exec_sql(sql):
    """Assume the existing connection, because this is what happens anway."""
    return sql_helper.db_exec(maindb, sql)


def db_exec_many(conn, prefix, suffixes):
    return sql_helper.db_exec_many(conn, prefix, suffixes)


def db_exec_many_sql(prefix, suffixes):
    return sql_helper.db_exec_many(maindb, prefix, suffixes)


def fix(start):
    return sql_helper.fix(start)


def fix_int(start):
    return sql_helper.fix_int(start)


def fix_date(start):
    return sql_helper.fix_date(start)


def fix_col_head(start, replaces={}):
    return sql_helper.fix_col_head(start, replaces)


def uniqify_columns(cols):
    return sql_helper.uniqify_columns(cols)


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
            if row[key] is not None:
                found_length = len(str(row[key]).strip())
                if found_length  > found[key]:
                    found[key] = len(row[key])
    return found


def fix_column_names(d):
    next_d = dict()

    for key in d:
        ltrs = list()
        for ltr in key:
            if ord(ltr) < 128:
                ltrs.append(ltr)
        next_key = ''.join(ltrs).strip()

        next_key = next_key.lower().replace(' ', '_')

        next_d[next_key] = d[key]

    for key in next_d:
        if len(key) > 63:
            raise Exception(f"cannot create column name longer than 63 characters, such as \"{key}\"")

    return next_d


def create_table(r):

    columns = dict()

    name = f"/tmp/readable_{int(dt.now().strftime('%s'))}.csv"

    # TODO This is stupid, why can we not read text directly out of a zip file?
    #
    with ZipFile(r['zip_file']) as myzip:
        with myzip.open(r['file_name'], 'r') as csvfile:
            text = csvfile.read().decode('latin1')
            f = open(name, 'wt')
            f.write(text)
            f.close()

    cols = dict()

    with open(name, newline='') as csvfile:

        rdr = csv.DictReader(csvfile)

        count = 0
        for row in rdr:

            for key in row:
                if key not in cols:
                    cols[key] = 0
                if len(row[key]) > cols[key]:
                    cols[key] = len(row[key])

    try:
        cols = fix_column_names(cols)
    except Exception as e:
        traceback.print_exc()
        r['exception'] = e
        return r

    r['columns'] = cols
    col_defs = list()

    for key in cols:
        cols[key] = f"varchar({cols[key]+5})"
        col_defs.append(f"{key} {cols[key]}")

    r['columns'] = cols

    tname = r['table_name']

    sql = f"create table {tname} ({', '.join(col_defs)})"

    print(f"\ncreating table {tname}...")

    try:
        sql_helper.db_exec(maindb, f"drop table if exists {tname}")

        print(f"sql: {sql}")
        sql_helper.db_exec(maindb, sql)

        r['table_file'] = name

    except Exception as e:
        traceback.print_exc()
        print(f"ERROR creating table from file: {name}")
        r['exception'] = e

    return r


def fix_sql(s):
    s = s.replace("'", "''")
    return f"'{s}'"


def generate_insert_sql(table_name, col_names, suffixes):

    sql = f"insert into {table_name} " \
          f"({', '.join(col_names)}) " \
          "values " \
          f"{', '.join(suffixes)}"

    #print(f"\nsql: {sql}")
    return sql


def write_table_data(r):
    print(f"\nr: {r}")

    col_names = list(r['columns'].keys())

    suffixes = list()

    is_first = True

    rows_found = 0

    with open(r['table_file'], newline='') as csvfile:
        rdr = csv.DictReader(csvfile, col_names)
        for row in rdr:
            # Why, there is no skip rows parameter?
            if is_first:
                is_first = False
                continue

            values = [fix_sql(r) for r in list(row.values())]
            suffixes.append(f"({', '.join(values)})")

            if len(suffixes) >= 1000:

                try:
                    sql = generate_insert_sql(r['table_name'], col_names, suffixes)
                    sql_helper.db_exec(maindb, sql)
                    rows_found += len(suffixes)
                    suffixes = list()
                except Exception as e:
                    traceback.print_exc()
                    r['exception'] = e
                    csvfile.close()
                    return r

        if len(suffixes) > 0:
            try:
                sql = generate_insert_sql(r['table_name'], col_names, suffixes)
                sql_helper.db_exec(maindb, sql)
                rows_found += len(suffixes)
            except Exception as e:
                traceback.print_exc()
                r['exception'] = e
                csvfile.close()
                return r

    csvfile.close()
    r['rows'] = rows_found
    return r


def create_tables(tables, types={}, replaces={}, length_pad=0, verbose=False):
    """Do the right thing for most csv files based on the column header strings found.
       Also determines the optimal length for a string column, though this process reads
       all of the data and so is probably not optimal and is probably doable in a smarter
       way."""

    failed = list()

    for table in tables:

        file = tables[table]
        if verbose:
            print(f"file: {file}")

        lengths = dict()

        try:
            csvfile = open(file, newline='', encoding='latin1')
            if verbose:
                print(f"csvfile: {csvfile}")

            line = csvfile.readline().strip()

            # See https://dnmtechs.com/splitting-quoted-strings-in-python-3-ignoring-separators/
            # result = re.split(r',(?=(?:[^"]*"[^"]*")*[^"]*$)', string)

            cols = fix_col_heads(re.split(r',(?=(?:[^"]*"[^"]*")*[^"]*$)', line), {})
            csvfile.close()

            #print(f"cols: {cols}")

            if verbose:
                print(f"cols: {cols}")

            first_read = False

            with open(file, newline='', encoding='latin1') as csvfile:
                rdr = csv.DictReader(csvfile, fieldnames=cols)

                next(rdr)

                lengths = find_column_lengths(rdr)
                #print(f"lengths: {lengths}")

            for col in lengths:
                sql = f"""update tables t1, columns c1 set c1.max_len = {lengths[col]}
                          where t1.pk = c1.table_pk and t1.name = '{table}' and c1.name = '{col}'"""
                # print(f"sql: {sql}")
                db_exec(metadb, sql)

            if verbose:
                print(f"types: {types}\n")
                print(f"lengths: {lengths}")

            col_defs = list()

            max_lengths = [len(name) for name in cols]
            if max(max_lengths) > 64:
                print(f"We have BAD COLUMN NAMES in: {cols}")
                continue

            # TODO The 'None' key should be checked for earlier but it will be complex.
            #
            if None in lengths:
                lengths.pop(None)

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

            db_exec(maindb, f"drop table if exists {table}")

            print(f"sql: {sql}")
            db_exec(maindb, sql)
        except:
            traceback.print_exc()
            failed.append(table)

    return failed


def fix_bad_offsets(row):
    # print(f"fix_bad_offsets:: start row: {row}")

    keys = list(row.keys())
    keys.pop()
    # print(f"keys: {keys}")

    # vals = [r.strip() for r in list(row.values())]
    vals = list(row.values())
    last = vals.pop()
    extra = len(last)
    vals.extend(last)
    # print(f"new vals: {vals}")

    for idx in range(len(vals)):
        if vals[idx] == '':
            vals.pop(idx)
            extra -= 1
            if extra == 0:
                break
    # print(f"new2 vals: {vals}")

    next_row = dict(zip(keys, vals))
    # print(f"next_row: {next_row}")
    return next_row


def read_data(tables, types={}, replaces={}, start_row=None, bucket=1000):
    """Reads CSV data and puts it into a table."""

    print(f"read_data: types: {types}")

    failed = list()

    for table in tables:

        if isinstance(tables[table], list):
            files = tables[table]
        else:
            files = [tables[table]]

        # print(f"files: {files}")

        cols = None
        prefix = None

        added = 0

        for f in files:

            print(f"\nfile: {f} -> ", end='')

            try:
                sqls = list()

                # TODO I should be able to get this from the create method.
                #
                csvfile = open(f, newline='', encoding='latin1')

                # only reading one line to get the column headers.
                #
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
                            row = fix_bad_offsets(row)

                        # when the cell A1 is not the first row.
                        #
                        if start_row is not None and rdr.line_num < start_row:
                            continue

                        for key in row:
                            if type(row[key]) == str:
                                row[key] = row[key].strip()

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
                            db_exec_many(maindb, prefix, sqls)
                            sqls.clear()

                        # When we were doing this one at a time.
                        #
                        # sql = f"insert into {table} ({', '.join(cols)}) values ({', '.join(next_vals)})"
                        # print(f"sql: {sql}")
                        # db_exec(conn, sql)

                        added += 1

                if len(sqls) > 0:
                    db_exec_many(maindb, prefix, sqls)

                print(f"table: {table} # {added}")

                sql = f"update sources set rows_num = {added} where table_name = '{table}'"
                db_exec(metadb, sql)

            except:
                traceback.print_exc()
                failed.append(table)

    return failed

