
import hashlib


def db_exec(eng, this_sql):
    """Call the database but we are not creating the connection here."""

    # print(f"sql: {sql}")
    if this_sql.strip().startswith('select'):
        return [dict(row) for row in eng.execute(this_sql).fetchall()]
    else:
        # print(f"sql: {this_sql}")
        return eng.execute(this_sql)


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


def digest(ds, fn):
    with open(f"{ds}/sources/{fn}", "rb") as f:
        digest = hashlib.file_digest(f, "sha256")
    return digest


def get_max_pk(conn, table_name):
    pk_rows = db_exec(conn, f"select max(pk) as max from {table_name}")
    if len(pk_rows) == 0 or pk_rows[0]['max'] is None:
        return 0
    else:
        return int(pk_rows[0]['max'])

