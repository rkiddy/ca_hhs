import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'pediatric_quality_indicators':
                  'ahrq-pediatric-quality-indicators-for-california-hospitals-2021.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'condition': 'ind_condition'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
