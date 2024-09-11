import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'healthcare_facilities': 'licensed-and-certified-healthcare-facility-locations.csv',
              'healthcare_facilities_across_time': 'across-time-summary-data-licensed-and-certified-healthcare-facilities.csv'}

    types = {'healthcare_facilities': {
                 'facid': 'char(9)',
                 'terminat_sw': 'char(1)',
                 'can_be_deemed_fac_type': 'char(1)',
                 'can_be_certified_fac_type': 'char(1)'}}

    csv.create_tables(tables)
    csv.read_data(tables)

    print("")
