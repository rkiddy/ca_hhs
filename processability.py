
import argparse
import json
import os
import os.path
import traceback
from datetime import datetime as dt
from pprint import pprint

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
    return parser.parse_args()


def zip_files():

    dirs = list()

    for f in os.scandir('.'):
        if f.is_dir():
            dirs.append(f)

    found = dict()

    for d in dirs:
        for f in os.scandir(d):
            if f.name.endswith('.zip'):
                if d in found:
                    found[d.name] = "MULTIPLE_ZIP_FILES_EXIST"
                else:
                    found[d.name] = f.name

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
        source['sheet_name'] = row['sheet_name']
        source['file_digest'] = row['file_digest']
        ds[id]['sources'][fname] = source

    for id in zip_files:
        if id not in ds:
            ds[id] = dict()
            ds[id]['name'] = id
            ds[id]['updated'] = 'UNKNOWN'
        ds[id]['zip'] = zip_files[id]

    return ds
    

if __name__ == '__main__':

    import progressbar as pb

    zips = zip_files()
    print(f"zip files found # {len(zips)}")

    found = add_dataset_info(zips)

    creatable_sources = list()

    for id in found:

        if 'zip' in found[id]:
            zfiles = u.zip_files(f"{id}/{found[id]['zip']}")
            for zfile in zfiles:
                if 'sources' not in found[id]:
                   found[id]['sources'] = dict()
                if zfile not in found[id]['sources']:
                    found[id]['sources'][zfile] = dict()
                    found[id]['sources'][zfile]['filename'] = 'NEW'
                found[id]['sources'][zfile]['in_zip'] = 'YES'

    for id in found:
        found[id]['sources_count'] = len(found[id]['sources'])

    print("found:")
    pprint(found, compact=True)
