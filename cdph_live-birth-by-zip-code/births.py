import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'births_by_zip_by_year': '1982-2022-final-births-by-year-by-zip-code.csv',
              'births_by_zip_by_month': '2020-2022-final-births-by-month-by-zip-code.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
