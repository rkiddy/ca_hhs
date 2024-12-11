import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'contraceptive_use_by_language':
                  'contraceptive-care-use-for-women-by-primary-language-contraceptive-type-and-age-group.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
