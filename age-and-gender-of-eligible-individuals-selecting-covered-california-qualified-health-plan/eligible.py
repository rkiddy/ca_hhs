import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'eligible_individuals_selecting_covered_california':
                  'age-and-gender-of-eligible-individuals-selecting-covered-california-qualified-health-plan-qhp.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
