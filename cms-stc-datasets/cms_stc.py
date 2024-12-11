import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'cms_stc_adult_smhs_by_language': 'cms-stc-adult-smhs-by-spoken-language.csv',
              'cms_stc_child_smhs_by_language': 'cms-stc-child-smhs-spoken-language.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
