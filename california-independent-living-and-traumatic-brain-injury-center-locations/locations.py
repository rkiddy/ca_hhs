import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'brain_injury_ind_living_center_locations':
                  'california-independent-living-and-traumatic-brain-injury-center-locations-.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
