import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'dds_consumers_served_by_age_gender': 'dds-consumers-served-by-age-group-and-gender-.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
