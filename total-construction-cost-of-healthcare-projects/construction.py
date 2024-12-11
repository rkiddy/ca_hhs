import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'construction_costs': 'total-construction-cost-of-healthcare-projects-.csv'}

    types = {'construction_costs': {'data_generation_date': 'date'}}

    replaces = {}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
