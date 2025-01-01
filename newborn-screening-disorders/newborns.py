import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'screening_disorders_by_california_region': 'screening-disorders-by-california-region.csv',
              'screening_disorders_statewide': 'screening-disorders-statewide.csv',
              'screening_disorders_by_race_ethnicity': 'screening-disorders-by-race-ethnicity.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.fix_file('screening-disorders-by-california-region.csv')
    csv.fix_file('screening-disorders-statewide.csv')
    csv.fix_file('screening-disorders-by-race-ethnicity.csv')

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
