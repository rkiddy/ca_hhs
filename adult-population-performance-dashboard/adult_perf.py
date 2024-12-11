import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'adult_perf_adult_smhs_utilization': 'adult-smhs-utilization.csv',
              'adult_perf_adult_ttsd': 'adult-time-to-step-down.csv',
              'adult_perf_adult_demo': 'performance-dashboard-adult-demographics.csv',
              'adult_perf_adult_snapshot': 'performance-dashboard-adult-snapshot-report.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
