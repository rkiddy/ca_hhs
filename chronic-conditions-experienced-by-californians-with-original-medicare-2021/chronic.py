import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'conditions_prevalence_spending_by_region':
                  'conditions-prevalence-spending-and-co-occurring-conditions-by-covered-california-region-and-by-demographic-group-or-geography-in-california-in-2021.csv',
              'conditions_prevalence_spending_by_demo':
                  'conditions-prevalence-spending-and-co-occurring-conditions-by-demographic-group-or-geography-in-california-and-the-rest-of-the-u-s-in-2021.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'state': 'state_name', 'condition': 'condition_name'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
