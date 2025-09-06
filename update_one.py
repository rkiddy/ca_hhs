
import argparse
from pprint import pprint
from zipfile import ZipFile
from datetime import datetime as dt

from sqlalchemy import create_engine

import config
import csv_helper
import excel_helper
import sql_helper
import utils as u

cfg = config.cfg()

dbmeta = create_engine(f"mysql+pymysql://{cfg['META_USR']}:{cfg['META_PWD']}@{cfg['META_HOST']}/{cfg['META_DB']}")
dbmeta.connect()


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--id', help="Give an id, or the name, of a dataset")
    parser.add_argument('--verbose', '-v', action="store_true")
    return parser.parse_args()


def load_datasets(name=None):

    if name is not None:

        sql = f"select * from datasets where name = '{name}'"
        rows = sql_helper.db_exec(dbmeta, sql)
        datasets = {name: rows[0]}

        sql = f"select * from sources where ds_pk = {datasets[name]['pk']}"
        datasets[name]['sources'] = sql_helper.db_exec(dbmeta, sql)

    else:
        # Create a name-keyed dictionary for general use and a pk-keyed dictionary for linking.
        #
        rows = sql_helper.db_exec(dbmeta, "select * from datasets where inactive is NULL")
        datasets = dict(zip([r['name'] for r in rows], rows))
        pks = dict(zip([r['pk'] for r in rows], [r['name'] for r in rows]))

        rows = sql_helper.db_exec(dbmeta, "select * from sources where inactive is NULL")

        for row in rows:
            ds_pk = row['ds_pk']
            if ds_pk in pks:
                ds_name = pks[ds_pk]

                if 'sources' not in datasets[ds_name]:
                    datasets[ds_name]['sources'] = list()

                datasets[ds_name]['sources'].append(row)

    return datasets


if __name__ == '__main__':

    args = arguments()

    # if fetch_instead, so something.

    # TODO What does fetch_before mean if we assume that we have already fetched?

    datasets = load_datasets(args.id)

    #print("datasets:")
    #pprint(datasets, compact=True)

    for name in datasets:
        print(f"\ndataset: {name}")
        ds = datasets[name]

        zip_file = ds['zip_file'].split('/')[-1]

        zip_file = f"{name}/{zip_file}"

        # for example, with chargemasters...
        if 'sources' not in r:
            continue

        readables = [r for r in ds['sources'] if r['table_name'] is not None]
        #print(f"readables: {readables}")

        for readable in readables:

            readable['zip_file'] = zip_file
            readable['ds_name'] = name

            print(f"readable: {readable}")

            with ZipFile(zip_file) as myzip:

                try:
                    with myzip.open(readable['file_name']) as myfile:
                        contents = myfile.read()
                        print(f"file: {readable['file_name']}, size: {len(contents)}")
                        readable['file_size'] = len(contents)
                except Exception as e:
                    print(f"ERROR in reading file: {readable['file_name']}")
                    readable['exception'] = e

                if 'exception' not in readable:

                    if readable['file_name'].endswith('.csv'):

                        readable = csv_helper.create_table(readable)

                        if 'exception' not in readable:
                            readable = csv_helper.write_table_data(readable)

                print("readable:")
                pprint(readable, compact=True)
                print("")

                if 'exception' not in readable:
                    sql = f"""update sources
                              set update_tables_fails = 0, update_tables = {int(dt.now().strftime('%s'))}
                              where ds_pk = {readable['ds_pk']} and file_name = '{readable['file_name']}'"""
                    sql_helper.db_exec(dbmeta, sql)

                else:
                    sql = f"""update sources set update_tables_fails = update_tables_fails + 1
                              where ds_pk = {readable['ds_pk']} and file_name = '{readable['file_name']}'"""
                    sql_helper.db_exec(dbmeta, sql)

