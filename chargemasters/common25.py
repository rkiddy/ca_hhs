
import traceback

from openpyxl import load_workbook
from sqlalchemy import create_engine

import config

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://{cfg['USR']}:{cfg['PWD']}@{cfg['HOST']}/{cfg['DB']}")
conn = engine.connect()


def db_exec(engine, sql):
    # print(f"sql: {sql}")
    if sql.strip().startswith('select'):
        return [dict(r) for r in engine.execute(sql).fetchall()]
    else:
        return engine.execute(sql)


def is_cpt_label(cell):
    if cell.value is None:
        return False
    if cell.data_type != 's':
        return False
    if not cell.value.endswith('CPT Code'):
        return False
    return True


def fix(val):
     if val is None:
         return "NULL"
     else:
         val = str(val).replace("'", "''")
         return f"'{val}'"


if __name__ == '__main__':

    db_exec(conn, "delete from chargemasters_common25")

    sql = "select pk, full_name from chargemasters_files where file_type = 'Common25' and file_ext = 'xlsx'"

    for row in db_exec(conn, sql):

        f = row['full_name']
        pk = row['pk']

        # f = "2011/El Camino Hosptial/106430763_Common25_2011.xlsx"
        # pk = 18

        print(f"file: {f}")

        try:

            wb = load_workbook(f)
            ws = wb.active

            found_top = False

            idx = 1
            num = 0

            while True:

                A = f"A{idx}"
                B = f"B{idx}"
                C = f"C{idx}"

                # print(f"checking row {idx}")

                if not found_top and is_cpt_label(ws[B]):
                    found_top = True

                if found_top and ws[A].value is None and ws[B].value is None and ws[C].value is None:
                    break

                if not found_top and idx > 10:
                    break

                if found_top and not str(ws[B].value).endswith('CPT Code'):
                    # print(f"proc: {ws[A].value}")
                    # print(f"code: {ws[B].value}")
                    # print(f"cost: {ws[C].value}")
                    # print("")


                    sql = f"""
                          insert into chargemasters_common25 values
                              ({pk}, {fix(ws[A].value)}, {fix(ws[B].value)}, {fix(ws[C].value)})
                          """
                    # print(f"sql: {sql}")
                    try:
                        db_exec(conn, sql)
                        num += 1
                    except:
                        traceback.print_exc()

                idx += 1

            wb.close()

        except:
            traceback.print_exc()

    # Done adding most files data.

    sqls = [
        "update chargemasters_common25 set charge = charge_str where charge_str rlike '^[0-9]*$'",
        "update chargemasters_common25 set charge = charge_str where charge_str rlike '[0-9]*\\.[0-9]{1,2}'"
    ]

    for sql in sqls:
        db_exec(conn, sql)

    # TODO when I run this manually, it works but in this code, it returns everything. Why?
    # sql = "select charge_str as c from chargemasters_common25 where charge_str rlike '[0-9]*\\.[0-9]{3,}'"

    sql = "select charge_str as c from chargemasters_common25"
    for row in db_exec(conn, sql):
        if row['c'] is not None:
            parts = row['c'].split('.')
            if len(parts) == 2 and len(parts[1]) > 2:
                next_charge = f"{parts[0]}.{parts[1][:2]}"
                sql = f"update chargemasters_common25 set charge = {next_charge} where charge_str = '{row['c']}'"
                print(f"sql: {sql}")
                db_exec(conn, sql)

     sql = """
         update chargemasters_files
         set common25 = (select count(0) from chargemasters_common25 where file_pk = pk and charge is not NULL)
         where file_type = 'Common25';
     """
     db_exec(conn, sql)

