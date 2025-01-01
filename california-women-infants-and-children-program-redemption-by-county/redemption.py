import sys
import os

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = dict()
    files = [f for f in os.listdir() if f.endswith('.csv')]

    for f in files:
        key = f.replace('-', '_')
        if len(key) > 64:
            key = key[:63]

        tables[key] = f

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.fix_file('wic-redemption-by-vendor-county-by-participant-category-data-2010-2018-.csv')

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
