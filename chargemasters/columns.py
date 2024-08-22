
import argparse
import re
import sys
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
    parser.add_argument('--file', nargs='?')
    parser.add_argument('--year', nargs='?', help="Files only for this year will be processed.")
    parser.add_argument('--verbose', '-v', action='store_true')

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
         val = str(val).replace("'", "''")
         return f"'{val}'"


def dprint(s):
    if args.verbose:
        print(s)


cols = ['A', 'B', 'C', 'D', 'E', 'F', 'G']

if __name__ == '__main__':

    args = arguments()

    if args.file:
        sql = f"select pk, file_ext from chargemasters_files where full_name = {fix(args.file)}"
        rows = db_exec(conn, sql)
        rows = [{'full_name': args.file, 'file_ext': rows[0]['file_ext'], 'pk': rows[0]['pk']}]
    else:
        if args.year:
            sql = "select pk, full_name, file_ext from chargemasters_files where file_ext = 'xlsx' and year = {year}"
            rows = db_exec(conn, sql)
        else:
            sql = "select pk, full_name, file_ext from chargemasters_files where file_ext = 'xlsx'"
            rows = db_exec(conn, sql)

    for row in rows:

        dprint(f"file: {row['full_name']}")

        ext = row['file_ext']
        fpk = row['pk']

        try:
            wb = excel.load_my_workbook(ext, row['full_name'])

            sheets = excel.sheet_names(ext, wb)

            for ws in excel.all_sheets(ext, wb):
                print(f"    sheet: {ws}")

                for i in range(1,11):
                    A = f"A{i}"
                    B = f"B{i}"
                    C = f"C{i}"
                    D = f"D{i}"
                    E = f"E{i}"
                    F = f"F{i}"
                    G = f"G{i}"

                    print(f"    row: {i}")
                    print(f"        A{i}: {ws[A].value}")
                    print(f"        B{i}: {ws[B].value}")
                    print(f"        C{i}: {ws[C].value}")
                    print(f"        D{i}: {ws[D].value}")
                    print(f"        E{i}: {ws[E].value}")
                    print(f"        F{i}: {ws[F].value}")
                    print(f"        G{i}: {ws[G].value}")
        except:
            traceback.print_exc()

        dprint("")

