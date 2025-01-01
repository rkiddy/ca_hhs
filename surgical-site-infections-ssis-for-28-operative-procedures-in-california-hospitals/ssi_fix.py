import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'ssi_in_pediatric_patients_2016': 'ssi-in-pediatric-patients-2016.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.fix_empty_col_heads('ssi-in-pediatric-patients-2016.csv')

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
