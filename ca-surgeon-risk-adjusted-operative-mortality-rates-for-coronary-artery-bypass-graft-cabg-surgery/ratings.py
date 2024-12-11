import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'surgeon_perf_ratings_2017_2018': '2017-2018-california-surgeon-performance-ratings.csv',
              'surgeon_perf_ratings_for_cabg_to_2016': 'california-surgeon-performance-ratings-for-cabg-2011-2016.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
