
"""
Process the results of the fetch from Cal HHS and turn the data into database tables.

Get the file list from the zip files and check the sources table contents. Verify a difference
in the files via the file_digest.

If a file has been removed, we can just remove it.

If a file is found in the Cal HHS data but not in the Opencal data, then we have to do something
to make sure of the table it needs to go into. We can constuct a table name for it and add it.

When the tables shift around because of new files, we should do something with the tables. This
should be managed in a separate script. But we will need to identify tables that are not associated
with active sources. We can archive them before they are deleted.
"""

import argparse
import json
import os
import os.path
import traceback
from datetime import datetime as dt
from pprint import pprint
import zipfile
import csv_helper
import excel_helper
import hashlib
import sql_helper

import requests
from sqlalchemy import create_engine

import config
import utils as u

cfg = config.cfg()

db = create_engine(f"mysql+pymysql://{cfg['META_USR']}:{cfg['META_PWD']}@{cfg['META_HOST']}/{cfg['META_DB']}")
db.connect()


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--id')
    parser.add_argument('--ids', nargs='*')
    parser.add_argument('--dry-run', action="store_true", help="List zips but does not open them.")
    parser.add_argument('--do-only', help="Do only X (an integer) datasets. From 1 to -1 (all).")
    parser.add_argument('--skip-mod-check', action="store_true")
    parser.add_argument('--verbose', '-v', action="store_true")
    return parser.parse_args()


def dprint(msg):
    if args.verbose:
        print(msg)


def should_auto_run(fname):
    ext = fname.split('.')[-1].lower()
    return ext in ['xlsx', 'csv'] and 'dictionary' not in fname


def update_table_mods(id):
    if id is None:
        sql = """select create_time, update_time, table_name
                 from information_schema.tables where table_schema = 'ca_hhs'"""
        rows = sql_helper.db_exec(db, sql)
    else:
        sql = f"""select s1.table_name from datasets d1, sources s1
                  where d1.pk = s1.ds_pk and d1.name = '{id}'"""
        tables = [f"'{r['table_name']}'" for r in db_exec(db, sql)]

        tables = ', '.join(tables)

        sql = f"""select create_time, update_time, table_name
                  from information_schema.tables
                  where table_schema = 'ca_hhs' and table_name in ({tables})"""
        rows = sql_helper.db_exec(db, sql)

    try:

        sql_helper.db_exec(db, "start transaction")
        dprint("started transaction for table mod dates.")

        for row in rows:
            #print(f"row: {row}")
            if row['UPDATE_TIME'] is not None:
                t = row['UPDATE_TIME']
            else:
                t = row['CREATE_TIME']

            mt = int(t.timestamp())

            table = row['TABLE_NAME']

            sql = f"update sources set update_tables = {mt} where table_name = '{table}'"
            sql_helper.db_exec(db, sql)

    except:
        sql_helper.db_exec(db, "rollback")
        traceback.print_exc()
    finally:
        sql_helper.db_exec(db, "commit")
        dprint("done.")


def verify_source_entries(datasets):

    found = dict()

    for name in datasets:
        ds = datasets[name]

        zip_file_last = ds[0]['zip_file'].split('/')[-1]

        files = [r['file_name'] for r in ds]

        full_fn = f"{name}/{zip_file_last}"

        ds_pk = ds[0]['ds_pk']

        # set up file-table connections...
        #
        sql = f"""select file_name, sheet_name, table_name from sources
                  where ds_pk = {ds_pk} and inactive is NULL and table_name is not NULL"""
        rows = sql_helper.db_exec(db, sql)

        tables_for_file = dict()

        # a file might go to one table, but if is has sheets in an xlsx, it will go to many...
        #
        for row in rows:
            if row['sheet_name'] is None:
                tables_for_file[row['file_name']] = row['table_name']
            else:
                if row['file_name'] not in tables_for_file:
                    tables_for_file[row['file_name']] = list()
                tables_for_file[row['file_name']].append(f"{row['sheet_name']}-->{row['table_name']}")

        # now I can properly start.
        #
        found[name] = {'name': name,
                       'zip_file': zip_file_last,
                       'ds_pk': ds_pk,
                       'both': [], 'extra': [], 'missing': []}
        try:
            with zipfile.ZipFile(full_fn, mode="r") as z:
                files = z.namelist()
            #print(f"files # {len(files)}")

            sql = f"select * from sources where ds_pk = {ds_pk} and inactive is NULL"
            rows = sql_helper.db_exec(db, sql)

            sources = dict(zip([r['file_name'] for r in rows], rows))
            #print(f"sources # {len(list(sources.keys()))}")

            found[name]['missing'] = list(set(sources.keys()) - set(files))

            found[name]['extra'] = list(set(files) - set(sources.keys()))

            found[name]['both'] = list(set(files) & set(sources.keys()))

        except KeyboardInterrupt as kie:
            print("KeyboardInterrupt")
            quit()
        except FileNotFoundError as fnfe:
            print(f"\nFILE NOT FOUND: full_fn: {full_fn}")
        except zipfile.BadZipFile as ze:
            print(f"\nBAD ZIP FILE: full_fn: {full_fn}")
        except:
            traceback.print_exc()
            print(f"\nERROR: full_fn: {full_fn}")

        next_both = list()
        for both in found[name]['both']:
            if both in tables_for_file:
                next_both.append(f"{both}-->{tables_for_file[both]}")
            else:
                next_both.append(both)
        found[name]['both'] = next_both

        next_missing = list()
        for missing in found[name]['missing']:
            if missing in tables_for_file:
                next_missing.append(f"{missing}-->{tables_for_file[missing]}")
            else:
                next_missing.append(missing)
        found[name]['missing'] = next_missing

    #print("found:")
    #pprint(found, compact=True)

    return found


def print_ds_with_msgs(ds, msgs):
    print("")
    print("="*60)
    pprint(ds, compact=True)
    print("")
    [print(msg) for msg in msgs]


def print_help():
    print("")
    print("The options here are:")
    print("    done - will take you to the next dataset.")
    print("    quit - will quit the entire script.")
    print("    add file: <name> - will add a source without a table.")
    print("    add file: <name> table: <name> - will add a source with this table.")
    print("    add file: <name> sheet: <name> table: <name> - will add a source with this sheet name and table.")
    print("    remove <name> - will remove the source or sources with this filename.")
    print("    help - will print out this information.")
    print("")


def process_remove(ds_pk, s):
    parts = s.split(' ')

    f_name = ' '.join(parts[1:])

    sql = f"update sources set inactive = unix_timestamp() where ds_pk = {ds_pk} and name = '{f_name}'"
    print(f"sql: {sql}")


def process_add(ds_pk, s):
    parts = s.split(' ')

    pk = sql_helper.get_max_pk(db, 'sources') + 1

    # TODO I could do correctness checks here....
    #
    # a file name and a sheet name could have a space, but a table name cannot.

    sql = None

    if 'table:' not in parts and 'sheet:' not in parts:
        f_idx = 2
        f_name = ' '.join(parts[f_idx:])
        sql = f"insert into sources (pk, ds_pk, file_name, created) values " \
              f"({pk}, {ds_pk}, '{f_name}', unix_timestamp())"

    if 'table:' in parts and 'sheet:' not in parts:
        f_idx = 2
        t_idx = parts.index('table:')

        f_name = ' '.join(parts[f_idx:t_idx])
        t_name = parts[t_idx+1]

        sql = f"insert into sources (pk, ds_pk, file_name, table_name, created) values " \
              f"({pk}, {ds_pk}, '{f_name}', '{t_name}', unix_timestamp())"

    if 'table:' in parts and 'sheet:' in parts:
        f_idx = 2
        s_idx = parts.index('sheet:')
        t_idx = parts.index('table:')

        f_name = ' '.join(parts[f_idx:s_idx])
        s_name = ' '.join(parts[s_idx+1:t_idx])
        t_name = parts[t_idx+1]

        sql = f"insert into sources (pk, ds_pk, file_name, sheet_name table_name, created) values " \
              f"({pk}, {ds_pk}, '{f_name}', '{s_name}', '{t_name}', unix_timestamp())"

    try:
        print(f"sql: {sql}")
        sql_helper.db_exec(db, sql)
    except:
        traceback.print_exc()


def ask_to_do_what(ds):

    done = False

    while not done:
        try:
            print("\ndo? ", end='')
            r = input()

            if r == 'done' or r == 'd':
                done = True

            elif r == 'quit':
                quit()

            elif r.startswith('add '):
                process_add(ds['ds_pk'], r)

            elif r.startswith('remove '):
                process_remove(ds['ds_pk'], r)

            elif r == 'help':
                print_help()

            else:
                print("did not understand... Type \"help\"")

        except KeyboardInterrupt:
            done = True


def check_source_entries(datasets):
    """Fix the newly found conditions that do not require any thought.
       If a file is newly found and is not a table-data file, then I can just
       add it to the sources table automatically. If it is a table-data file,
       or should be, then I cannot. If a file is missing and it is not a
       table-data file, then I can just mark it as missing. If it is a
       table-data file, then I cannot."""

    print("")

    source_pk = sql_helper.get_max_pk(db, 'sources')

    sql = "select table_name from sources where table_name is not NULL and inactive is NULL"
    existing_tables = [r['table_name'] for r in sql_helper.db_exec(db, sql)]

    for name in datasets:

        ds = datasets[name]

        #print(f"dataset[{name}]")
        #pprint(ds, compact=True)
        #print("")

        has_extra = 'extra' in ds and len(ds['extra']) > 0
        has_missing = 'missing' in ds and len(ds['missing']) > 0

        msgs = list()

        if not has_extra and not has_missing:
            continue

        for file in ds['missing']:
            msgs.append(f"------ is missing: {file}")

        for file in ds['extra']:
            msgs.append(f"-- is newly found; {file}")

        if len(msgs) > 0:
            print_ds_with_msgs(ds, msgs)

        ask_to_do_what(ds)


if __name__ == '__main__':

    import progressbar as pb

    args = arguments()

    if not args.skip_mod_check:
        update_table_mods(args.id)
    else:
        dprint("Skipping update_table_mods check...")

    if args.id is None:
        sql = """select * from datasets d1, sources s1
                 where d1.pk = s1.ds_pk and d1.inactive is NULL and s1.inactive is NULL and
                       (s1.update_tables is NULL or s1.update_tables < d1.update_zip_file)"""
    else:
        sql = f"""select * from datasets d1, sources s1
                  where d1.pk = s1.ds_pk and d1.inactive is NULL and s1.inactive is NULL and
                        d1.name = '{args.id}' and
                       (s1.update_tables is NULL or s1.update_tables < d1.update_zip_file)
                  order by d1.name, s1.file_name"""

    rows = sql_helper.db_exec(db, sql)
    dataset_sources = dict()
    for row in rows:
        if row['name'] not in dataset_sources:
            dataset_sources[row['name']] = list()
        dataset_sources[row['name']].append(row)

    dprint("")
    for name in dataset_sources:
        dprint(f"{name}: sources # {len(dataset_sources[name])}")

    # dataset_sources is a dict like: {'dataset-name': {row from datasets and sources}. etc.}

    print(f"\ndataset_sources found # {len(dataset_sources)}")

    datasets = verify_source_entries(dataset_sources)

    check_source_entries(datasets)

    quit()

    #for ds in datasets:
    #    print(f"\nid: {ds['name']}")
    #    pprint(ds, compact=True)

    """
    Now, each dataset entry looks like:
        'primary-care-clinic-annual-utilization-data': {
           'digest': None,
           'local_update': '2025-07-11 17:46',
           'name': 'primary-care-clinic-annual-utilization-data',
           'ds_pk': 374,
           'zip_file': 'primary-care-clinic-annual-utilization-data-537va2yo.zip'},
    """
    quit()

    # Check if any of the found zips are not represented in the sources table.
    #
    sources = sources_from_zips(datasets)
    print(f"creatable sources # {len(creatable_sources)}")

    for id in found:
        found[id]['sources_count'] = len(found[id]['sources'])

    if len(creatable_sources) > 0 and not args.dry_run:
        add_sources(creatable_sources)

    # Extract the files that can be used and re-build the main db tables with them.
    #
    for id in found:

        print(f"id: {id}\n")

        for source in found[id]['sources']:
            #print(f"source: {source}")
            source_obj = found[id]['sources'][source]
            source_obj['file_name'] = source
            print(f"source_obj: {source_obj}\n")

    print("")


