import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'beneficiary_appeal_type': 'appeal-type-county-and-statewide.csv',
              'beneficiary_expedited_appeal_type': 'expedited-appeal-type-county-and-statewide.csv',
              'beneficiary_grievance_type': 'grievance-type-county-and-statewide.csv',
              'beneficiary_notice_of_adverse_benefit_determ_type':
                  'notice-of-adverse-benefit-determination-noabd-type-county-and-statewide.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
