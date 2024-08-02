

import argparse
import re
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
    parser.add_argument('--only-load-strings', action='store_true')
    parser.add_argument('--update-charge', action='store_true')
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
         val = str(val).replace("'", "''")
         return f"'{val}'"


def dprint(s):
    if args.verbose:
        print(s)


def load_strings():

    if not incremental:

        print("re-creating table; chargemasters_common25")
        db_exec(conn, "drop table if exists chargemasters_common25")
        sql = """
              create table chargemasters_common25 (
                  file_pk int,
                  procedure_desc varchar(1027),
                  cpt_code varchar(31),
                  charge_str varchar(31),
                  charge decimal(10,2))"""
        db_exec(conn, sql)
        db_exec(conn, "alter table chargemasters_common25 add index (charge_str)")
        db_exec(conn, "alter table chargemasters_common25 add index (charge)")
        db_exec(conn, "alter table chargemasters_common25 add index (file_pk)")

        sql = """
              select pk, full_name, file_type, file_ext from chargemasters_files
              where file_type in ('Common25', 'CDM All') and file_ext = 'xlsx'"""
        files = db_exec(conn, sql)

    # We have give just one file name here.
    #
    if args.file is not None:
        sql = f"""
              select pk, full_name, file_type, file_ext from chargemasters_files
              where full_name = {fix(args.file)} and file_ext = 'xlsx'"""
        files = db_exec(conn, sql)


    # We have given a file which contains a list of filenames. NOT TESTED!
    #
    if args.files is not None:
        fs = open(args.files, 'r')
        fnames = fs.readlines()
        fnames = [fix(r) for r in fnames]
        sql = f"""
              select pk, full_name, file_type, file_ext from chargemasters_files
              where full_name in ({','.join(fnames)}) and file_ext = 'xlsx'"""
        files = db_exec(conn, sql)

    # We are processing all the files for a year.
    #
    if args.year is not None:
        sql = f"""
              select pk, full_name, file_type, file_ext from chargemasters_files
              where year = {args.year} and file_ext = 'xlsx'"""
        files = db_exec(conn, sql)

    dprint(f"files found # {len(files)}")

    for row in files:

        f = row['full_name']
        pk = row['pk']

        # f = "2011/El Camino Hosptial/106430763_Common25_2011.xlsx"
        # pk = 18

        ext = row['file_ext']

        print(f"file: {f}")

        try:

            wb = excel.load_my_workbook(ext, f)

            # if 'CDM All', then tab could be like 'HCAI 106381154_COMMON 25', '25 Most Common OP Procedures',
            #     'AB 1045 Form', 'AB 1045', 'AB 1045 FORM', or variation thereof.
            #
            if row['file_type'] != 'Common25':
                c25_sheet = excel.common25_sheet(ext, wb)
                if c25_sheet is not None:
                    wb.active = c25_sheet
                else:
                    continue
                    dprint(f"No Common25 sheet found in {f}")

            # It is ok to do these unconditionally, because it is safe when we start with no data.
            #
            db_exec(conn, f"update chargemasters_files set common25 = 0 where full_name = {fix(f)}")
            db_exec(conn, f"delete from chargemasters_common25 where file_pk = {row['pk']}")

            ws = wb.active

            idx = 1

            while True:

                locations = excel.find_column_heads(ext, ws)

                if locations is None:
                    print("Cannot find CPT Code column head.")
                    break

                A = f"{locations['Procedure']['col']}{locations['Procedure']['row']+idx}"
                B = f"{locations['CPT Code']['col']}{locations['CPT Code']['row']+idx}"
                C = f"{locations['Cost']['col']}{locations['Cost']['row']+idx}"

                empty_rows = 0

                # print(f"checking row {idx}")

                if ws[A].value is None and ws[B].value is None and ws[C].value is None:
                    dprint("found empty line")
                    empty_lines += 1
                    if empty_lines > 10:
                        break
                else:
                    empty_lines = 0

                if ws[A].value is not None and ws[B].value is None and str(ws[C].value).startswith('='):
                    dprint(f"Formula found in |{ws[A].value}|{ws[B].value}|{ws[C].value}|")
                    break

                if not str(ws[B].value).endswith('CPT Code'):
                    # print(f"proc: {ws[A].value}")
                    # print(f"code: {ws[B].value}")
                    # print(f"cost: {ws[C].value}")
                    # print("")


                    if ws[A].value is not None and ws[B].value is not None:
                        sql = f"""
                              insert into chargemasters_common25
                                  (file_pk, procedure_desc, cpt_code, charge_str)
                                  values
                                  ({pk}, {fix(ws[A].value)}, {fix(ws[B].value)}, {fix(ws[C].value)})
                              """
                        dprint(f"sql: {sql}")
                        try:
                            db_exec(conn, sql)
                        except:
                            print(f"A was |{ws[A].value}| and B was |{ws[B].value}|")
                            traceback.print_exc()

                idx += 1

            wb.close()

        except KeyboardInterrupt:
            print("quitting...")
            quit()
        except:
            traceback.print_exc()


# DB only, no excel.
#
def update_charge_value():

    sqls = [
        "update ignore chargemasters_common25 set charge = charge_str where charge_str rlike '^[0-9]*$'",
        "update ignore chargemasters_common25 set charge = charge_str where charge_str rlike '[0-9]*\\.[0-9]{1,2}'",
        "delete from chargemasters_common25 where charge_str is NULL"
    ]

    for sql in sqls:
        try:
            db_exec(conn, sql)
        except KeyboardInterrupt:
            print("quitting...")
            quit()
        except:
            traceback.print_exc()

# DB only, no excel
#
def update_file_counts():

    # TODO when I run this manually, it works but in this code, it returns everything. Why?
    # sql = "select charge_str as c from chargemasters_common25 where charge_str rlike '[0-9]*\\.[0-9]{3,}'"

    sql = "select charge_str as c from chargemasters_common25 where charge is NULL"
    for row in db_exec(conn, sql):
        if row['c'] is not None:
            # print(f"value: {row['c']}")
            parts = row['c'].split('.')
            if len(parts) == 2 and parts[1] == '':
                parts[1] = '00'
            if len(parts) == 2 and parts[0].isnumeric() and parts[1].isnumeric():
                next_charge = f"{parts[0]}.{parts[1][:2]}"
                sql = f"update chargemasters_common25 set charge = {next_charge} where charge_str = '{row['c']}'"
                dprint(f"sql: {sql}")
                try:
                    db_exec(conn, sql)
                except:
                    traceback.print_exc()

    sql = """
        update chargemasters_files
        set common25 = (select count(0) from chargemasters_common25 where file_pk = pk and charge is not NULL)
        where file_type = 'Common25';
    """
    try:
        db_exec(conn, sql)
    except KeyboardInterrupt:
        print("quitting...")
        quit()
    except:
        traceback.print_exc()

    print("")


# DB and excel both
#
def only_scan_columns():

    sql = """
          select full_name, file_type, file_ext from chargemasters_files
          where file_type in ('Common25', 'CDM All') order by year desc"""

    for row in db_exec(conn, sql):

        f = row['full_name']
        print(f"\nfile: {f}")

        ext = row['file_ext']

        try:

            wb = None

            wb = excel.load_my_workbook(ext, row['full_name'])

            dprint(f"wb: {wb}")

            if wb is None:
                continue

            if row['file_type'] == 'Common25':
                ws = excel.only_sheet(ext, wb)
            else:
                ws = excel.common25_sheet(ext, wb)

            dprint(f"ws: {ws}")

            if ws is None:
                continue

            found = excel.find_column_heads(ext, ws)

            if found is None:
                print("No column heads are found.")
                continue
            else:
                row = found['CPT Code']['row']
                Ar = f"A{row}"
                Br = f"B{row}"
                Cr = f"C{row}"
                Dr = f"D{row}"
                Er = f"E{row}"
                Fr = f"F{row}"
                Gr = f"G{row}"

                print(f"{Ar}: '{excel.cell_value_str(ext, ws, Ar)}', {Br}: '{excel.cell_value_str(ext, ws, Br)}', {Cr}: '{excel.cell_value_str(ext, ws, Cr)}', {Dr}: '{excel.cell_value_str(ext, ws, Dr)}', {Er}: '{excel.cell_value_str(ext, ws, Er)}', {Fr}: '{excel.cell_value_str(ext, ws, Fr)}', {Gr}: '{excel.cell_value_str(ext, ws, Gr)}'")

        except:
            traceback.print_exc()

    print("Done.")


if __name__ == '__main__':

    args = arguments()

    if args.only_scan_columns:
        only_scan_columns()
        quit()

    # if incremental, do not delete all data first.
    #
    incremental = args.file is not None or args.files is not None or args.year is not None

    if not args.update_charge and not args.update_files_counts:
        load_strings()

    if not args.only_load_strings and not args.update_files_counts:
        update_charge_value()

    if not args.only_load_strings and not args.update_charge:
        update_file_counts()

