import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'tobacco_sold_to_youth_under_21': 'tobacco-sold-to-young-adults-under-21.csv',
              'tobacco_sold_to_youth_under_18': 'tobacco-sold-to-youth-under-18.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
