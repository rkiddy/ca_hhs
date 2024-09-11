import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'sewershed_cases': 'covid-19-sewershed-restricted-case-data.csv'}

    types = {'table': {
                 'col': 'type'}}

    csv.create_tables(tables)
    csv.read_data(tables)

    print("")
