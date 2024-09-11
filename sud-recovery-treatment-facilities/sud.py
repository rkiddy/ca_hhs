import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'sud_facilities': '.csv'}

    types = {'sud_facilities': {
                 'x': 'decimal(18,15)',
                 'y': 'decimal(18,15)',
                 'resident_capacity': 'int',
                 'total_occupancy': 'int',
                 'expiration_date': 'date',
                 'latitude': 'decimal(12,8)',
                 'longitude': 'decimal(12,8)'}}

    csv.create_tables(tables, types)
    csv.read_data(tables, types)

    print("")
