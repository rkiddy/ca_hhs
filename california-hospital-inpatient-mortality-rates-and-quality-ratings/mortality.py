import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'california_hospital_inpatient_mortality_rates':
                  '2016-2022-california-hospital-inpatient-mortality-rates-and-quality-ratings-.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
