import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'cc_lic_for_24hour_residential_for_children':
                  'community-care-licensing-24-hour-residential-care-for-children-facility-locations-.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
