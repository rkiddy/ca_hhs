
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
    parser.add_argument('--update-files-counts', action='store_true')
    parser.add_argument('--file', nargs='?', help="Name of single file to process.")
    parser.add_argument('--files', nargs='?', help="File containing list of files to process.")
    parser.add_argument('--year', nargs='?', help="Files only for this year will be processed.")
    parser.add_argument('--only-scan-columns', action='store_true')
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
         val = str(val).replace("'", "''").replace('%', '%%')
         return f"'{val}'"


def dprint(s):
    if args.verbose:
        print(s)


def list_cdm_files(year = None):
    # sql = "select * from chargemasters_files
    #        where file_type in ('CDM', 'CDM All', 'CMD') and file_ext = 'xlsx' limit 20"

    if year is None:
        sql = """
              select pk, full_name, file_ext, file_type from chargemasters_files
              where file_type in ('CDM', 'CDM All', 'CMD') and file_ext = 'xlsx'"""
    else:
        sql = f"""
              select pk, full_name, file_ext, file_type from chargemasters_files
              where file_type in ('CDM', 'CDM All', 'CMD') and file_ext = 'xlsx' and year = {year}"""

    return db_exec(conn, sql)


if __name__ == '__main__':

    args = arguments()

    files = None

    if not args.file and not args.files:
        files = list_cdm_files();

    if args.year:
        files = list_cdm_files(args.year)

    if args.file:
        sql = f"select pk, file_ext, file_type from chargemasters_files where full_name = {fix(args.file)}"
        row = db_exec(conn, sql)[0]
        files = [ { 'pk': pk, 'file_ext': row['file_ext'], 'file_type': row['file_type'], 'full_name': args.file } ]

    if args.files:
        raise Exception("Not yet implemented.")

    dprint(f"files: {files}")

    for file in files:

        print(f"\nfile: {file['full_name']}")

        ext = file['file_ext']
        pk = file['pk']

        try:
            wb = excel.load_my_workbook(ext, file['full_name'])

            dprint(f"sheets: {excel.sheet_names(ext, wb)}\n")

            if file['file_type'] in ('CDM', 'CMD'):
                ws = excel.only_sheet(ext, wb)
            else:
                ws = excel.cdm_sheet(ext, wb)

            dprint(f"ws: {ws}")
            if ws is None:
                print("No sheet is found")
                continue
            else:
                print(f"ws: {ws}")

            col_heads = excel.find_cdm_column_heads(ext, ws)

            print(f"col_heads: {col_heads}")

            if col_heads is None:
                excel.dump_top(ext, ws)

        except:
            traceback.print_exc()

        continue

        # FOR NOW, SKIP THIS STUFF
        # ----------------------------------------

        if col_heads is None:
            print("No col_heads found")
            continue

        code_col = col_heads['number'][:1]
        desc_col = col_heads['desc'][:1]
        charge_col = col_heads['charge'][:1]

        code_row_head = int(col_heads['number'][1:])
        desc_row_head = int(col_heads['desc'][1:])
        charge_row_head = int(col_heads['charge'][1:])

        dprint(f"columns: code: {code_col}, desc: {desc_col}, charge: {charge_col}")
        dprint(f"rows: code: {code_row_head}, desc: {desc_row_head}, charge: {charge_row_head}")

        idx = 1
        empties = 0

        done = False

        try:

            while not done:

                code_row = code_row_head + idx
                desc_row = desc_row_head + idx
                charge_row = charge_row_head + idx

                # dprint(f"looking at {code_col}{code_row}, {desc_col}{desc_row}, {charge_col}{charge_row}")

                num = ws[f"{code_col}{code_row}"].value
                desc = ws[f"{desc_col}{desc_row}"].value
                charge = ws[f"{charge_col}{charge_row}"].value

                if num is None and desc is None and charge is None:
                    empties += 1
                    if empties > 9:
                        done = True
                else:
                    empties = 0

                if empties == 0:
                    sql = f"insert into chargemasters_cdm values ({pk}, {fix(num)}, {fix(desc)}, {fix(charge)}, NULL)"
                    dprint(f"sql: {sql}")
                    db_exec(conn, sql)

            idx += 1

        except:
            traceback.print_exc()

        wb.close()
        print(f"rows read = {idx}")

    print("")

