import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'hospital_buildings': 'hospital-building-data-.csv'}

    types = {}

    replaces = {'height_(ft)': 'height_ft', 'spc_rating_*': 'spc_rating'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
