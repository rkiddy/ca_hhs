import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'hospital_encounters_for_homeless_by_facility':
                  '2019-2020-homeless-hospital-encounters-age-race-sex-expected-payer-by-facility.csv',
              'hospital_encounters_for_homeless_by_expected_payer':
                  'homeless-hospital-encounters-age-race-sex-expected-payer-statewide.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'system': 'system_name', 'all': 'all_values'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
