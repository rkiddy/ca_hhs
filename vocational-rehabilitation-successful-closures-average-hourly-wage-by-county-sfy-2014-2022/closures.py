import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'vocational_rehab_closures_wage_by_county':
                  'vocational-rehabilitation-successful-closures-average-hourly-wage-by-county-sfy-2014-2022-.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
