import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'table': 'filename',
              '': ''}

    types = {'table': {
                 'col': 'type'}}

    replaces = {}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
