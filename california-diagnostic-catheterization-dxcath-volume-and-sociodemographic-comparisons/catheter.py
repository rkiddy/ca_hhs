import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'catheterization_dxcath_vol_and_sociodemo':
                  'california-diagnostic-catheterization-dxcath-volume-and-sociodemographic-comparisons.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")