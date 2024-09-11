
# MULTIPLE_FILE_PER_TABLE

import os
import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    print('\nAborting...\n')
    quit()

    files = [f for f in os.listdir() if f.endswith('.csv')]

    tables = {'research_projects_approved': files}

    types = {'research_projects_approved': {
                 'affiliation_and_data_source': 'text',
                 'completed': 'date',
                 'data_source': 'text',
                 'initial_approval': 'date',
                 'latest_approval': 'date'}}

    csv.create_tables(tables, types)

    csv.read_data(tables, types)

