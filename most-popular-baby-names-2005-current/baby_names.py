import os
import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'baby_names': '1960-2022-top-25-baby-names-by-sex-by-year.csv'}

    types = {'baby_names': {'data_revision_date': 'date', 'year': 'int'}}

    replaces = {'rank': 'rank_'}

    csv.create_tables(tables, types, replaces)

    csv.read_data(tables, types, replaces)

