import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'notice_of_inaction_noi_report': 'notice-of-inaction-noi-report.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.fix_file('notice-of-inaction-noi-report.csv')

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
