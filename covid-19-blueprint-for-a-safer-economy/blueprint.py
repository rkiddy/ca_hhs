import os
import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    found = os.listdir()
    # print(f"found: {found}")

    tables = dict()

    for found_file in found:
        if found_file.endswith('.csv'):
            csv_name = found_file
            table_name = csv_name.replace('.csv', '').replace('-', '_')
            tables[table_name] = csv_name
    # print(f"tables: {tables}")

    for tn in tables:
        csv_file = tables[tn]
        csv.fix_file(csv_file)

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    created = csv.create_tables(tables, types, replaces)

    if len(created) < len(tables):
        print("WARNING: Some tables not created! Check this.")

    csv.read_data(tables, types, replaces)

    print("")
