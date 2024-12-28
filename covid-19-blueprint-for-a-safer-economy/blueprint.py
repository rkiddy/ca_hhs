import os
import sys

sys.path.append('..')

import csv_helper as csv

def fix_file(name1):

    last = None

    name2 = f"{name1}__"

    w = open(name2, 'wb')

    with open(name1, 'rb') as f:
        while 1:
            curr = f.read(1)

            # we want to keep '\r\n' pairs, but eliminiate other instances of '\n'.
            #
            if not curr:
                break
            if last:
                w.write(last)
            if ord(curr) != 10 or (last and ord(last) == 13):
                last = curr
            else:
                last = bytes(' ', "utf-8")
   
        w.write(last) 

    w.close()

    os.remove(name1)
    os.rename(name2, name1)


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
        fix_file(csv_file)

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    created = csv.create_tables(tables, types, replaces)

    if len(created) < len(tables):
        print("WARNING: Some tables not created! Check this.")

    csv.read_data(tables, types, replaces)

    print("")
