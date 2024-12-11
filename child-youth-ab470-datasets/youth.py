import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'ab470_youth_demographics_by_age': 'children-and-youth-demographics-by-age-group.csv',
              'ab470_youth_demographics_by_race': 'children-and-youth-demographics-by-race-group.csv',
              'ab470_youth_demographics_by_sex': 'children-and-youth-demographics-by-sex.csv',
              'ab470_youth_demographics_by_language': 'children-and-youth-demographics-by-written-language.csv',
              'ab470_youth_utilization_by_age': 'children-and-youth-mental-health-services-utilization-by-age-group.csv',
              'ab470_youth_utilization_by_race': 'children-and-youth-mental-health-services-utilization-by-race-group.csv',
              'ab470_youth_utilization_by_sex': 'children-and-youth-mental-health-services-utilization-by-sex.csv',
              'ab470_youth_utilization_by_language':
                  'children-and-youth-mental-health-services-utilization-by-written-language.csv',
              'ab470_youth_snapshot_by_language': 'children-and-youth-snapshot-by-written-language.csv',
              'ab470_youth_snapshot_by_age': 'children-and-youth-snapshot-report-by-age-group.csv',
              'ab470_youth_snapshot_by_race': 'children-and-youth-snapshot-report-by-race-group.csv',
              'ab470_youth_snapshot_by_sex': 'children-and-youth-snapshot-report-by-sex.csv',
              'ab470_youth_time_to_step_down_by_age': 'children-and-youth-time-to-step-down-by-age-group.csv',
              'ab470_youth_time_to_step_down_by_race': 'children-and-youth-time-to-step-down-by-race-group.csv',
              'ab470_youth_time_to_step_down_by_sex': 'children-and-youth-time-to-step-down-by-sex.csv',
              'ab470_youth_time_to_step_down_by_language': 'children-and-youth-time-to-step-down-by-written-language.csv',
              'ab470_youth_diagnosis_by_age':
                  'statewide-top-10-icd10-diagnosis-code-categories-for-children-and-youth-by-age-group.csv',
              'ab470_youth_diagnosis_by_race':
                  'statewide-top-10-icd10-diagnosis-code-categories-for-children-and-youth-by-race-group.csv',
              'ab470_youth_diagnosis_by_sex':
                  'statewide-top-10-icd10-diagnosis-code-categories-for-children-and-youth-by-sex.csv',
              'ab470_youth_diagnosis_by_language':
                  'statewide-top-10-icd10-diagnosis-code-categories-for-children-and-youth-by-written-language.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
