import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'hospital_ratings_for_aortic_valve_replacement_procedures': 'california-hospital-performance-ratings-for-transcatheter-aortic-valve-replacement-procedures.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.fix_file('california-hospital-performance-ratings-for-transcatheter-aortic-valve-replacement-procedures.csv')

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
