
import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'asthma_visits_by_county': 'asthma-ed-visit-rates-by-county-2015-present.csv',
              'asthma_visits_by_zip': 'asthma-ed-visit-rates-by-zip-code-2013-present.csv',
              'asthma_visits_by_zip_and_age': 'asthma-ed-visit-rates-by-zip-code-and-age-groups-2013-present.csv'}

    types = {'asthma_visits_by_county': {
                 'year': 'int',
                 'number_of_ed_visits': 'int',
                 'age_adjusted_ed_visit_rate': 'decimal(6,1)' },
             'asthma_visits_by_zip': {
                 'year': 'int',
                 'number_of_asthma_ed_visits': 'int',
                 'age_adjusted_rate_of_asthma_ed_v': 'decimal(6,1)'},
             'asthma_visits_by_zip_and_age': {
                 'year': 'int',
                 'number_of_asthma_ed_visits': 'int',
                 'age_adjusted_rate_of_asthma_ed_v': 'decimal(6,1)'}}

    csv.create_tables(tables, types)
    csv.read_data(tables, types)

    print("")
