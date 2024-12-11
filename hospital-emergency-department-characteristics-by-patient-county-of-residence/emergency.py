import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'hospital_ed_disp_by_county':
                  'hospital-emergency-department-characteristics-disposition-by-patient-county-of-residence.csv',
              'hospital_ed_expected_payer':
                  'hospital-emergency-department-characteristics-expected-payer-by-patient-county-of-residence.csv',
              'hospital_ed_race':
                  'hospital-emergency-department-characteristics-race-group-by-patient-county-of-residence.csv',
              'hospital_ed_sex':
                  'hospital-emergency-department-characteristics-sex-by-patient-county-of-residence.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
