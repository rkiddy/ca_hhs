import os
import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'baby_names': '1960-2022-top-25-baby-names-by-sex-by-year.csv'}

    types = {'baby_names': {'data_revision_date': 'date', 'year': 'int'}}

    csv.create_tables(tables, types)

    csv.read_data(tables, types)

