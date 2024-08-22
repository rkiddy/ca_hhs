
import argparse
import re
import sys
import time
import traceback

import excel
from sqlalchemy import create_engine

sys.path.append('..')

import config

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://{cfg['USR']}:{cfg['PWD']}@{cfg['HOST']}/{cfg['DB']}")
conn = engine.connect()


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--all', action='store_true')
    parser.add_argument('--file', nargs='?')
    parser.add_argument('--year', nargs='?', help="Files only for this year will be processed.")
    parser.add_argument('--max', nargs='?', help="Max number to process.")
    parser.add_argument('--clean', action='store_true')
    parser.add_argument('--verbose', '-v', action='store_true')
    parser.add_argument('--dry-run', action='store_true')


    return parser.parse_args()


def db_exec(engine, sql):
    # print(f"sql: {sql}")
    if sql.strip().startswith('select'):
        return [dict(r) for r in engine.execute(sql).fetchall()]
    else:
        return engine.execute(sql)


def fix(val):
     if val is None:
         return "NULL"
     else:
         val = str(val).replace("'", "''").replace('%', '%%')
         return f"'{val}'"


def max_pk(table):
    rows = db_exec(conn, f"select max(pk) pk from {table}")
    print(f"rows: {rows}")
    if len(rows) == 0 or 'pk' not in rows[0] or rows[0]['pk'] is None:
        return 0
    else:
        return rows[0]['pk']


def dprint(s):
    if args.verbose:
        print(s)


def name_matches_common25(s):
    s2 = s.lower()
    if 'common' in s2 or '25' in s2 or 'ab1045' in s2 or 'ab 1045' in s2:
        return True
    return False

def next_row_cells(keys):
    col0 = keys[0][0]
    col1 = keys[1][0]
    col2 = keys[2][0]
    row0 = int(keys[0][1:]) + 1
    row1 = int(keys[1][1:]) + 1
    row2 = int(keys[2][1:]) + 1
    key0 = f"{col0}{row0}"
    key1 = f"{col1}{row1}"
    key2 = f"{col2}{row2}"

    return {key0: '', key1: '', key2: ''}


def row_is_headerish(cells, types):
    keys = list(cells.keys())
    if types[keys[0]] == 's' and types[keys[1]] == 'f':
        return True
    if types[keys[0]] == 's' and types[keys[2]] == 's' and cells[keys[2]] != '':
        return True
    return False


def row_is_empty(cells):
    keys = list(cells.keys())
    if cells[keys[0]] is None or cells[keys[0]] == '':
        if cells[keys[1]] is None or cells[keys[1]] == '':
            if cells[keys[2]] is None or cells[keys[2]] == '':
                return True
    return False


if __name__ == '__main__':

    args = arguments()

    if args.all or args.clean:
        db_exec(conn, "drop table if exists chargemasters_sheets")
        db_exec(conn, "create table chargemasters_sheets (file_pk int, sheet_name varchar(255))")

    if args.clean:
        quit()

    if args.file:
        sql = f"""select pk, full_name, file_ext from chargemasters_files
                  where full_name = {fix(args.file)}"""
    elif args.year:
        sql = f"select pk, full_name, file_ext from chargemasters_files where file_ext = 'xlsx' and year = {args.year}"
    else:
        sql = "select pk, full_name, file_ext from chargemasters_files where file_ext = 'xlsx'"

    rows = db_exec(conn, sql)

    if args.max and len(rows) > int(args.max):
        rows = rows[:int(args.max)]

    dprint(f"files: {rows}")

    for row in rows:

        print(f"file: {row['full_name']}", end='')
        dprint("")

        ext = row['file_ext']
        fpk = row['pk']

        if ext != 'xlsx':
            dprint("skipping file...")
            continue

        try:
            start = time.time()

            commons = 0

            wb = excel.load_my_workbook(ext, row['full_name'])

            sheet_names = excel.sheet_names(ext, wb)

            for sheet_name in sheet_names:
    
                dprint(f"sheet_name: {sheet_name}")
                if name_matches_common25(sheet_name):
                    dprint('    sheet_type: Common25')
                    found = excel.find_common25_col_heads(ext, wb, sheet_name)
                    dprint(f"    cols found: {found}")

                    if found:

                        db_exec(conn, f"delete from chargemasters_common25 where file_pk = {fpk}")

                        tops = found
                        done = False

                        while not done:
               
                            tops = next_row_cells(list(tops.keys()))
                            #
                            # now that we are looking at the next row...
                            #
                            keys = list(tops.keys())

                            tops[keys[0]] = excel.cell_value_str(ext, wb, sheet_name, keys[0])
                            tops[keys[1]] = excel.cell_value_str(ext, wb, sheet_name, keys[1])
                            tops[keys[2]] = excel.cell_value_str(ext, wb, sheet_name, keys[2])

                            types = dict()
                            types[keys[0]] = excel.cell_type(ext, wb, sheet_name, keys[0])
                            types[keys[1]] = excel.cell_type(ext, wb, sheet_name, keys[1])
                            types[keys[2]] = excel.cell_type(ext, wb, sheet_name, keys[2])

                            dprint(f"   tops found: {tops}")
                            dprint(f"   types found: {types}")

                            if not row_is_headerish(tops, types) and not row_is_empty(tops):
                                commons += 1

                                cols = ['procedure_desc', 'cpt_code', 'charge_str']
                                vals = [fix(tops[keys[0]]), fix(tops[keys[1]]), fix(tops[keys[2]])]

                                sql = "insert into chargemasters_common25 (file_pk, "
                                sql += ', '.join(cols)
                                sql += f") values ({fpk}, "
                                sql += ', '.join(vals)
                                sql += ')'

                                dprint(f"sql: {sql}")

                                if not args.dry_run:
                                    db_exec(conn, sql)

                            if row_is_empty(tops):
                                 done = True

            wb.close()

            end = time.time()

            parts = str(end - start).split('.')
            duration = f"{parts[0]}.{parts[1][:4]}"

            print(f" -> {commons}, duration: {duration} sec")

        except:
            traceback.print_exc()

        dprint("")

