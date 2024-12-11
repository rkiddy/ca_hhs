import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'asthma_ed_visit_rates': 'asthma-ed-visit-rates-lghc-indicator-07-.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
