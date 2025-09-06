
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

        zip_file = ds[0]['zip_file']

        zip_file_last = zip_file.split('/')[-1]

        files = [r['file_name'] for r in ds]

        full_fn = f"{name}/{zip_file_last}"

        ds_pk = ds[0]['ds_pk']

        found[name] = {'name': name,
                       'zip_file': zip_file,
                       'ds_pk': ds_pk}
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

            sql = f"""select file_name from sources
                      where ds_pk = {ds_pk} and inactive is not NULL"""
            rows = sql_helper.db_exec(db, sql)
            found[name]['inactive'] = [r['file_name'] for r in rows]

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

    #print("found:")
    #pprint(found, compact=True)

    return found


def fix_easy_source_entries(datasets):
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

        if has_extra or has_missing:

            for file in ds['missing']:
                if should_auto_run(file):
                    msgs.append(f"------ is missing: {file}")
                else:
                    source_pk += 1
                    sql = f"""insert into sources (pk, ds_pk, file_name, created, update_tables_fails)
                              values ({source_pk}, (select pk from datasets where name = '{ds['name']}'),
                                      '{file}', unix_timestamp(), 0)"""
                    #print(f"sql: {sql}")
                    sql_helper.db_exec(db, sql)

            for file in ds['extra']:
                if should_auto_run(file):
                    msgs.append(f"-- is newly found; {file}")
                else:
                    sql = f"""update sources set inactive = unix_timestamp()
                              where ds_pk = (select pk from datasets where name = '{ds['name']}') and
                                    file_name = '{file}'"""
                    #print(f"sql: {sql}")
                    sql_helper.db_exec(db, sql)

            if len(msgs) > 0:
                print("")
                print("="*60)
                pprint(ds, compact=True)
                print("")
                [print(msg) for msg in msgs]


def xxx_sources_from_zips(datasets):

    # HEY Why am i getting so many exceptions from here? What the fuck!
    sources = list()

    for id in datasets:

        try:
            source = dict()
            print(f"\nfrom dataset[{id}]:")
            pprint(datasets[id], compact=True)
            source['id'] = {'id': id,
                            'ds_stored_update': datasets[id]['stored_update'],
                            'ds_local_update': datasets[id]['local_update'],
                            'ds_pk': datasets[id]['pk'],
                            'zip': datasets[id]['zip']}
            sources.append(source)

        except:
            traceback.print_exc()

    fsources = list()

    for entry in sources:
        zip = entry['zip']
        with zipfile.ZipFile(f"{id}/{zip}", mode="r") as z:
            files = z.namelist()

        for file in files:
            fsource = dict(entry)
            fsource['file_name'] = file
            fsource['sheet_name'] = 'UNKNOWN'

    return sources


def xxx_add_sources(sources):

    pk = sql_helper.get_max_pk(db, 'sources')

    for item in sources:
        id = item['id']
        file = item['file']

        if should_auto_run(file):
            auto_run = 1
        else:
            auto_run = 0

        pk += 1

        sql = f"""insert into sources (pk, ds_pk, auto_run, file_name, created) values
                 ({pk}, (select pk from datasets where name = {u.fix(id)}),
                  {auto_run}, {u.fix(file)}, unix_timestamp())"""
        u.db_exec(db, sql)


def xxx_extract_file(zip, source):
    zip = f"{id}/{found[id]['zip']}"
    with zipfile.ZipFile(zip, mode="r") as z:
        z.extract(source, path='/tmp')
    return f"/tmp/{source}"


def xxx_problem_zips(zips):
    found = list()
    for id in zips:
        if id == 'chart-1-6-mcp-penetration-rates-for-ecm-in-the-last-12-months-of-the-reporting-period':
            print(f"id: {id} and zips[id]: {zips[id]}")
        if zips[id] == 'MULTIPLE_ZIP_FILES_EXIST':
            found.append(f"{id}/{zips[id]}")
    return found


def xxx_read_file_digest(source):
    with open(source['file_path'], "rb") as f:
        digest = hashlib.file_digest(f, "sha256").hexdigest()
    print(f"read_file_digest:: digest: {digest}\n")
    return digest


def xxx_process_data_file(source):

    print(f"\nprocess_data_file:: source: {source}\n")

    found_digest = read_file_digest(source)

    if source['zip_digest'] == found_digest:
        print(f"NOT SEEING changes: {source}\n")
        return
    else:
        print(f"OLD digest: {source['file_digest']}")
        print(f"NEW digest: {found_digest}")
        print("digests DIFFER\n")

    if source['file_path'].endswith('.csv'):
        print("will process with csv_helper")
        #result = csv_helper.create_tables(source)
        return

    if source['file_path'].endswith('.xlsx'):
        print("will process with excel_helper")
        pass # read xlsx file with excel_helper
        return

    print(f"NOT processable: {source}")


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

    for name in dataset_sources:
        dprint(f"{name}: sources # {len(dataset_sources[name])}")

    # dataset_sources is a dict like: {'dataset-name': {row from datasets and sources}. etc.}

    print(f"dataset_sources found # {len(dataset_sources)}")

    datasets = verify_source_entries(dataset_sources)

    fix_easy_source_entries(datasets)

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

#            if 'file_digest' in source_obj and source_obj['file_digest'] is not None:
#                try:
#                    if not args.dry_run:
#                        file_path = extract_file(f"{id}/{found[id]['zip']}", source)
#                        print(f"extracted: {source}")
#                    else:
#                        print(f"would extract: {source}")
#                except KeyError:
#                    # TODO deal with missing files (and tables?) better, if possible.
#                    #
#                    print(f"MISSING from zip: {source}")
#                    print(f"source was {source_obj}\n")
#                    continue
#            else:
#                file_path = None
#                print(f"NOT extracting: {source}\n")
#
#            if file_path:
#                source_obj['file_path'] = file_path
#                process_data_file(source_obj)
#
#                try:
#                    os.remove(file_path)
#                except FileNotFoundError:
#                    print(f"NOT found to delete: {file_path}")
#
    print("")


