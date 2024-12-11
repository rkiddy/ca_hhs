import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'cigarette_use_in_adults': 'data-cigarette-use-prevalence-in-adults.csv',
              'tobacco_use_in_adults': 'data-tobacco-use-prevalence-in-adults.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
