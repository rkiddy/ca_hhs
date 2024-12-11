import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'patient_demographics_age': 'age0.csv',
              'patient_demographics_citizenship_status': 'citizenship-status0.csv',
              'patient_demographics_education': 'education0.csv',
              'patient_demographics_ethnicity': 'ethnicity0.csv',
              'patient_demographics_language_at_home': 'language-spoken-at-home0.csv',
              'patient_demographics_level_of_care': 'level-of-care0.csv',
              'patient_demographics_marital_status': 'marital-status0.csv',
              'patient_demographics_counts_by_hospital': 'patient-counts-by-hospital0.csv',
              'patient_demographics_region': 'region0.csv',
              'patient_demographics_sex': 'sex0.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'grouping': 'grouping_name'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
