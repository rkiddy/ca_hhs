
import argparse
import re
import sys
import traceback

from pprint import pprint

import excel
from sqlalchemy import create_engine

sys.path.append('..')

import config

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://{cfg['USR']}:{cfg['PWD']}@{cfg['HOST']}/{cfg['DB']}")
conn = engine.connect()


def arguments():
    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--file', nargs='?', help="Process only one file.")
    group.add_argument('--year', nargs='?', help="Files only for this year will be processed.")
    group.add_argument('--all', action='store_true', help="Process all files.")
    group.add_argument('--none', action='store_true', help="No new fles, post-process only.")
    parser.add_argument('--overwrite', action="store_true", help="Re-read from spreadsheet and save new values.")
    parser.add_argument('--dry-run', action="store_true")
    parser.add_argument('--verbose', '-v', action='store_true')

    return parser.parse_args()


def db_exec(engine, sql):
    dprint(f"sql: {sql}")
    if sql.strip().startswith('select'):
        return [dict(r) for r in engine.execute(sql).fetchall()]
    else:
        return engine.execute(sql)


def db_dict(engine, key, sql):
    found = dict()
    for row in db_exec(engine, sql):
        val = row.pop(key)
        if len(row) == 1:
            next_key = list(row.keys())[0]
            found[val] = row[next_key]
        else:
            found[val] = row
    return found


def db_count(engine, sql):
    return len(db_exec(engine, sql))


def fix(val):
     if val is None:
         return "NULL"
     else:
         val = str(val).replace("'", "''").replace('%', '%%')
         return f"'{val}'"


def dprint(s):
    if args.verbose:
        print(s)


def dpprint(label, s):
    if args.verbose:
        print(label)
        pprint(s)


if __name__ == '__main__':

    args = arguments()

    print("")

    if not args.none:

        if args.file:
            sql = f"select pk, full_name, file_ext from chargemasters_files where full_name = {fix(args.file)}"
            rows = db_exec(conn, sql)[:1]
        if args.year:
            sql = f"select pk, full_name, file_ext from chargemasters_files where file_ext = 'xlsx' and year = {args.year}"
            rows = db_exec(conn, sql)
        if args.all:
            sql = "select pk, full_name, file_ext from chargemasters_files where file_ext = 'xlsx'"
            rows = db_exec(conn, sql)

        sql = "select file_pk, count(0) as count from chargemasters_columns group by file_pk"
        fpks = db_dict(conn, 'file_pk', sql)

        for row in rows:

            ext = row['file_ext']

            if ext != 'xlsx':
                continue

            print(f"file: {row['full_name']}")

            bad_pk = None

            try:

                pk = row['pk']

                if not args.dry_run:
                    if args.overwrite:
                        db_exec(conn, f"delete from chargemasters_columns where file_pk = {pk}")
                    else:
                        if pk in fpks:
                            print("skipping...")
                            continue

                wb = excel.load_my_workbook('xlsx', row['full_name'])

                found = excel.find_column_tops('xlsx', wb)
                dpprint("column tops:", found)

                pk = row['pk']

                rows = list()

                for sheet in found:
                    for key in found[sheet]:
                        sql = f"""insert into chargemasters_columns (file_pk, sheet_name, key_str, val_str) values
                                  ({pk}, {fix(sheet)}, {fix(key)}, {fix(found[sheet][key])})"""
                        if not args.dry_run:
                            db_exec(conn, sql)

            except:
                bad_pk = row['pk']
                if args.verbose:
                    traceback.print_exc()
                else:
                    print("EXCEPTION!")

            if bad_pk and not args.dry_run:
                db_exec(conn, f"delete from chargemasters_columns where file_pk = {bad_pk}")

    # start of post-processing, all of which is non-destructive to repeat.

    sql = """select c1.file_pk as c1_pk, c1.sheet_name as c1_name, s1.file_pk as s1_pk, s1.name as s1_name
             from chargemasters_columns c1 left join chargemasters_sheets s1
                  on c1.file_pk = s1.file_pk and c1.sheet_name = s1.name where s1.file_pk is NULL"""

    found = dict()

    inserted = 0

    for row in db_exec(conn, sql):
        try:
            pk = row['c1_pk']
            name = row['c1_name']

            if pk not in found:
                found[pk] = list()
            if name not in found[pk]:
                found[pk].append(name)
                db_exec(conn, f"insert into chargemasters_sheets (file_pk, name) values ({pk}, {fix(name)})")
                inserted += 1
        except:
            print(f"EXCEPTION for row: {row}")
            traceback.print_exc()
            quit()

    print(f"chargemasters_sheets inserted # {inserted}")
    print("")

