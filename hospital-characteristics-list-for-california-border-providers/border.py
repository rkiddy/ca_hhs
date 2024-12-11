import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'hospital_char_list_for_border_providers':
                  'hospital-characteristics-list-for-california-border-provider-in-state-fiscal-year-2019-20.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
