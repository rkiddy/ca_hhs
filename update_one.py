
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
    parser.add_argument('--load-all', action="store_true")
    parser.add_argument('--verbose', '-v', action="store_true")
    parser.add_argument('--only-do', help="Only do an arbitrary number of datasets.")
    parser.add_argument('--insert-bucket', default=10000)
    parser.add_argument('--dry-run', action="store_true")
    return parser.parse_args()


def load_datasets(name=None):

    if name is not None:

        sql = f"select * from datasets where name = '{name}'"
        rows = sql_helper.db_exec(dbmeta, sql)
        datasets = {name: rows[0]}
        pks = {rows[0]['pk']: rows[0]['name']}

        sql = f"select * from sources where ds_pk = {datasets[name]['pk']} and inactive is NULL"
        rows = sql_helper.db_exec(dbmeta, sql)

    else:
        # Create a name-keyed dictionary for general use and a pk-keyed dictionary for linking.
        #
        #sql = "select * from datasets d1 where d1.inactive is NULL"
        sql = """select *
                 from datasets d1
                 where d1.inactive is NULL and
                       d1.update_zip_file > (select min(s1.update_tables) from sources s1
                                             where d1.pk = s1.ds_pk and s1.table_name is not NULL and
                                                   s1.file_name like '%%csv')"""
        rows = sql_helper.db_exec(dbmeta, sql)

        datasets = dict(zip([r['name'] for r in rows], rows))
        pks = dict(zip([r['pk'] for r in rows], [r['name'] for r in rows]))

        rows = sql_helper.db_exec(dbmeta, "select * from sources where inactive is NULL")

    for row in rows:
        ds_pk = row['ds_pk']
        if ds_pk in pks:
            ds_name = pks[ds_pk]

            if 'sources' not in datasets[ds_name]:
                datasets[ds_name]['sources'] = list()

            if row['update_tables'] is None or row['update_tables'] < datasets[ds_name]['update_zip_file']:
                if row['table_name'] is not None:
                    datasets[ds_name]['sources'].append(row)

    return datasets


if __name__ == '__main__':

    args = arguments()

    # if fetch_instead, so something.

    # TODO What does fetch_before mean if we assume that we have already fetched?

    datasets = load_datasets(args.id)

    print(f"datasets # {len(datasets)}")

    if args.dry_run:
        print("\ndatasets:")
        pprint([{'name': r} for r in datasets], compact=True)
        quit()

    for name in datasets:
        print(f"\ndataset: {name}")
        ds = datasets[name]

        zip_file = ds['zip_file'].split('/')[-1]

        zip_file = f"{name}/{zip_file}"

        # for example, with chargemasters...
        if 'sources' not in ds:
            continue

        readables = [r for r in ds['sources'] if r['table_name'] is not None]
        #print(f"readables: {readables}")

        for readable in readables:

            readable['zip_file'] = zip_file
            readable['ds_name'] = name

            print(f"readable: {readable}")

            try:
                with ZipFile(zip_file) as myzip:
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
                        readable = csv_helper.write_table_data(readable, args.insert_bucket)

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

