import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'hospital_performance_ratings_01': 'california-hospital-performance-ratings-2016-2021.csv',
              'hospital_performance_ratings_02': 'california-hospital-performance-ratings-2017-2022.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'system': 'system_name'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
