import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'change_in_num_of_pact_clients':
                  'change-in-the-number-of-family-pact-clients-served-by-sex-age-and-fiscal-years.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
