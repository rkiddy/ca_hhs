
import traceback

from sqlalchemy import create_engine

import config

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://{cfg['MAIN_USR']}:{cfg['MAIN_PWD']}@{cfg['MAIN_HOST']}/{cfg['MAIN_DB']}")
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
    return db_exec_many(engine, prefix, suffixes)


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
                      'condition': 'condition_name',
                      'year_month': 'year_month_str',
                      'key': 'key_str',
                      'values': 'values_str',
                      'table': 'table_name',
                      'grouping': 'grouping_name',
                      'year': 'year_str',
                      'all': 'all_str'}


def fix_col_head(start, replaces={}):
    """Many of the column headers in these files are not compatible with mysql databases."""

    col = fix_first_key(start)

    for key in replaces:
        col = col.replace(key, replaces[key])

    col = col.lower()

    for key in known_replacements:
        if col == key:
            col = known_replacements[key]

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
    col = col.replace('+', '_plus_')
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

    for key in known_replacements:
        if col == key:
            col = known_replacements[key]

    if len(col) > 64:
        col = col[:63]

    return col


def uniqify_columns(cols):
    colsD = dict()
    for idx in range(len(cols)):
        aCol = cols[idx]
        if aCol not in colsD:
            colsD[aCol] = list()
        colsD[aCol].append(idx)
    # print(f"colsD: {colsD}")
    next_cols = [None] * len(cols)

    for key in colsD:
        if len(colsD[key]) == 1:
            idx = colsD[key][0]
            next_cols[idx] = key
        else:
            for jdx in range(len(colsD[key])):
                idx = colsD[key][jdx]
                next_cols[idx] = f"{key}{jdx+1}"
    # print(f"next_cols: {next_cols}")
    return next_cols


def fix_col_heads(start, replaces={}):
    # print(f"fix_col_heads: start: {start}")

    heads = [fix_col_head(c,replaces) for c in start]

    while heads[-1] == '':
        heads = heads[:-1]

    # automatically fix when there is a duplicate column.
    #
    if len(heads) != len(list(set(heads))):
        heads = uniqify_columns(heads)

    return heads


def fix_empty_col_heads(name1):
    """At least one csv file has a first row like 'one,two,three,,four' even if this makes
       no sense. So add names."""

    first = True

    name2 = f"{name1}__"

    w = open(name2, 'w')

    added = 0

    with open(name1, 'rb') as f:
        for line in f:

            # This is only done for the first line and no other.
            #
            if first:
                parts = re.split(br',(?=(?:[^"]*"[^"]*")*[^"]*$)', line)
                # print(f"STARTING: parts: {parts}")
                for idx in range(len(parts)):
                    if len(parts[idx]) == 0:
                        parts[idx] = f"Added{added}".encode("utf-8")
                        added += 1
                    else:
                        pass

                next_parts = list()
                for part in parts:
                    next_parts.append(part.decode("utf-8"))

                line = ','.join(next_parts)
                first = False

                # print(f"AFTER: line: {line}")
            else:
                line = line.decode("utf-8")

            w.write(line)

    w.close()

    os.remove(name1)
    os.rename(name2, name1)


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


if __name__ == '__main__':
    pass
