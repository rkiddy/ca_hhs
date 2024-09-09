
import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'adolescent_births': 'adolescent-births-2014-2016-.csv'}

    types = {'adolescent_births': {'population': 'int'}}

    csv.create_tables(tables, types)
    csv.read_data(tables, types)

    print("")
