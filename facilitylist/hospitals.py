import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'facility_list': '.csv'}

    types = {'facility_list': {
                 'x': 'decimal(16,8)',
                 'y': 'decimal(16,8)',
                 'id': 'int',
                 'facilitynbr': 'int',
                 'latitude': 'decimal(12,8)',
                 'longitude': 'decimal(12,8)',
                 'senatedistrict': 'int',
                 'assemblydistrict': 'int',
                 'congressionaldistrict': 'int',
                 'alirts_facility_id': 'int',
                 'objectid': 'int'}}

    csv.create_tables(tables, types)
    csv.read_data(tables, types)

    print("")
