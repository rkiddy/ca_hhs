
import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'adolescent_births_partial_data': 'adolescent-births-2014-2016-.csv',
              'adolescent_births': 'Data-Adolescent-Births.csv'}

    types = {'adolescent_births_partial_set': {'population': 'int'},
             'adolescent_births': {}}

    # Numerator,Denominator,Rate,Lower 95% Confidence Limit,Upper 95% Confidence Limit

    csv.create_tables(tables, types)
    csv.read_data(tables, types)

    print("")
