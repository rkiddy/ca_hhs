
"""
Process the results of the fetch from Cal HHS and turn the data into database tables.

The downloaded zip files are kept. The files that come out of the zip files are not kept, as they
can be pulled out of the zip file at any time.

The Opencal database is fetched against, so that the meta information known can be integrated into
the structure with the zip file that was found, updating the sources table.
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

import requests
from sqlalchemy import create_engine

import config
import utils as u

cfg = config.cfg()

eng = create_engine(f"mysql+pymysql://{cfg['META_USR']}:{cfg['META_PWD']}@{cfg['META_HOST']}/{cfg['META_DB']}")
conn = eng.connect()


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--opencal-file')
    parser.add_argument('--cal-hhs-file')
    parser.add_argument('--id')
    parser.add_argument('--ids', nargs='*')
    parser.add_argument('--dry-run', action="store_true")
    return parser.parse_args()


def should_auto_run(fname):
    ext = fname.split('.')[-1].lower()
    return ext in ['xlsx', 'csv'] and 'dictionary' not in fname


def find_zip_files(dir=None):

    dirs = list()

    next_dirs = list()

    if not args.id and not args.ids:
        next_dirs.append('.')

    if args.id:
        next_dirs.append(f"./{args.id}")

    if args.ids:
        next_dirs.extend([f"./{r}" for r in args.ids])

    found = dict()

    for d in next_dirs:
        if '.venv' in d:
            continue
        try:
            for f in os.scandir(d):
                if f.is_dir():
                    next_dirs.append(f.name)
                else:
                    if f.name.endswith('.zip'):
                        d2 = d.replace('./', '')
                        if d2 in found:
                            found[d2] = "MULTIPLE_ZIP_FILES_EXIST"
                        else:
                            found[d2] = f.name
        except:
            pass

    return found


def add_dataset_info(zip_files):

    # Get all dataset/sources info except where the dataset is inactive or the source is known to be removed.
    #
    #sql = f"""select * from datasets d1 left outer join sources s1 on d1.pk = s1.ds_pk
    #          where d1.inactive is NULL and s1.removed is NULL"""

    sql = f"""select * from datasets d1, sources s1 where d1.pk = s1.ds_pk
              and d1.inactive is NULL and s1.removed is NULL"""

    ds = dict()

    for row in u.db_exec(conn, sql):
        id = row['name']
        if id not in ds:
            ds[id] = dict()
            ds[id]['name'] = id
            ds[id]['updated'] = row['updated']
            ds[id]['sources'] = dict()
        fname = row['file_name']
        source = dict()
        source['dataset'] = id
        source['dataset_pk'] = row['ds_pk']
        source['sheet_name'] = row['sheet_name']
        source['file_digest'] = row['file_digest']
        source['table_name'] = row['table_name']
        ds[id]['sources'][fname] = source

    found = dict()

    for id in zip_files:
        if id not in ds:
            found[id] = dict()
            found[id]['name'] = id
            found[id]['updated'] = 'UNKNOWN'
        else:
            found[id] = ds[id]

        found[id]['zip'] = zip_files[id]

    return found


def find_creatable_sources(creatables):

    creatable_sources = list()

    for id in found:
        if 'zip' in found[id]:

            try:
                zfiles = u.zip_files(f"{id}/{found[id]['zip']}")
                for zfile in zfiles:
                    if 'sources' not in found[id]:
                       found[id]['sources'] = dict()
                    if zfile not in found[id]['sources']:
                        found[id]['sources'][zfile] = dict()
                        creatable_sources.append({'id': id, 'file': zfile})
                    found[id]['sources'][zfile]['in_zip'] = 'YES'
            except:
                print(f"exception from file: {id}/{found[id]['zip']}")

    return creatable_sources


def add_sources(sources):

    pk = u.get_max_pk(conn, 'sources')

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
        u.db_exec(conn, sql)


def extract_file(zip, source):
    zip = f"{id}/{found[id]['zip']}"
    with zipfile.ZipFile(zip, mode="r") as z:
        z.extract(source, path='/tmp')
    return f"/tmp/{source}"


def problem_zips(zips):
    found = list()
    for id in zips:
        if id == 'chart-1-6-mcp-penetration-rates-for-ecm-in-the-last-12-months-of-the-reporting-period':
            print(f"id: {id} and zips[id]: {zips[id]}")
        if zips[id] == 'MULTIPLE_ZIP_FILES_EXIST':
            found.append(f"{id}/{zips[id]}")
    return found


def read_file_digest(source):
    with open(source['file_path'], "rb") as f:
        digest = hashlib.file_digest(f, "sha256").hexdigest()
    print(f"read_file_digest:: digest: {digest}\n")
    return digest


def process_data_file(source):

    print(f"\nprocess_data_file:: source: {source}\n")

    found_digest = read_file_digest(source)

    if source['file_digest'] == found_digest:
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

    # Check the local directories for zip files.
    #
    zips = find_zip_files()
    print(f"zip files found # {len(zips)}")

    problem_zips = [f"{id}/{zips[id]}" for id in zips if zips[id] == 'MULTIPLE_ZIP_FILES_EXIST']
    if len(problem_zips) > 0:
        print("\nDatasets with multiple zip files exist. Delete bad zip files and re-run.\n")
        pprint(found, compact=True)
        quit()

    found = add_dataset_info(zips)

    # Check if any of the found zips are not represented in the sources table.
    #
    creatable_sources = find_creatable_sources(found)
    print(f"creatable sources # {len(creatable_sources)}")

    for id in found:
        found[id]['sources_count'] = len(found[id]['sources'])

    if len(creatable_sources) > 0 and not args.dry_run:
        add_sources(creatable_sources)

    creatable_sources_again = find_creatable_sources(found)
    if len(creatable_sources_again) > 0:
        print(f"Something is WRONG, creatable_sources after # {len(creatable_sources_again)}")
    else:
        print("creatable_sources add confirmed")
    print("")

    # Extract the files that can be used and re-build the main db tables with them.
    #
    for id in found:
        for source in found[id]['sources']:
            #print(f"source: {source}")
            source_obj = found[id]['sources'][source]

            if 'file_digest' in source_obj and source_obj['file_digest'] is not None:
                try:
                    file_path = extract_file(f"{id}/{found[id]['zip']}", source)
                    print(f"extracted: {source}")
                except KeyError:
                    print(f"MISSING from zip: {source}")
                    print(f"source was {source_obj}\n")
                    continue
            else:
                file_path = None
                #print(f"NOT extracting: {source}")

            if file_path:
                source_obj['file_path'] = file_path
                process_data_file(source_obj)

                try:
                    os.remove(file_path)
                except FileNotFoundError:
                    print(f"NOT found to delete: {file_path}")
    print("")


