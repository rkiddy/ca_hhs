import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'medicaid_eligibility_by_aid_code': 'california-medicaid-eligibility-groups-by-medi-cal-aid-code.csv',
              'medicaid_eligibility_by_aid_code_change_log':
                  'tmsis-change-log-for-california-medicaid-eligibility-groups-by-medi-cal-aid-code.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
