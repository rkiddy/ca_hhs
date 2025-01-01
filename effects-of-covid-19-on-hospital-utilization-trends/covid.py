import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'table': 'filename',
              '': ''}

    tables = {'hospital_utilization_trends': 'hospital-utilization-trends.csv',
              'in_hospital_mortality_trends_by_health_category': 'in-hospital-mortality-trends-by-health-category.csv',
              'in_hospital_mortality_trends_by_secondary_diagnosis': 'in-hospital-mortality-trends-by-secondary-diagnosis.csv',
              'in_hospital_mortality_trends_by_diagnosis_type': 'in-hospital-mortality-trends-by-diagnosis-type.csv',
              'utilization_trends_by_health_category': 'utilization-trends-by-health-category.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'system': 'system_name'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
