import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'amb_surj_char_disposition_by_patient_county':
                  'ambulatory-surgery-characteristics-disposition-by-patient-county-of-residence.csv',
              'amb_surj_char_expected_payer_by_county':
                  'ambulatory-surgery-characteristics-expected-payer-by-patient-county-of-residence.csv',
              'amb_surj_char_race_by_county':
                  'ambulatory-surgery-characteristics-race-group-by-patient-county-of-residence.csv',
              'amb_surj_char_sex_by_county':
                  'ambulatory-surgery-characteristics-sex-by-patient-county-of-residence.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
