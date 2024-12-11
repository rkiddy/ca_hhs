import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'chdp_number_of_immunizations':
                  'child-health-and-disability-prevention-chdp-program-number-of-immunizations-by-age-sfy-2008-2014-.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
