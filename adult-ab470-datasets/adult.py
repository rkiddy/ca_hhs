import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'ab470_adult_demo_by_age_group':
                  'adult-demographics-by-age-group-suppressed.csv',
              'ab470_adult_demo_by_race_group':
                  'adult-demographics-by-race-group-suppressed.csv',
              'ab470_adult_demo_by_sex':
                  'adult-demographics-by-sex-suppressed.csv',
              'ab470_adult_demo_by_language':
                  'adult-demographics-by-written-language-suppressed.csv',
              'ab470_adult_mental_health_services_utilization_by_age_group':
                  'adult-mental-health-services-utilization-by-age-group-suppressed.csv',
              'ab470_adult_mental_health_services_utilization_by_race_group':
                  'adult-mental-health-services-utilization-by-race-group-suppressed.csv',
              'ab470_adult_mental_health_services_utilization_by_sex':
                  'adult-mental-health-services-utilization-by-sex-suppressed.csv',
              'ab470_adult_mental_health_services_utilization_by_language':
                  'adult-mental-health-services-utilization-by-written-language-suppressed.csv',
              'ab470_adult_snapshot_report_by_age_group':
                  'adult-snapshot-report-by-age-group-suppressed.csv',
              'ab470_adult_snapshot_report_by_race_group':
                  'adult-snapshot-report-by-race-group-suppressed.csv',
              'ab470_adult_snapshot_report_by_sex':
                  'adult-snapshot-report-by-sex-suppressed.csv',
              'ab470_adult_snapshot_report_by_language':
                  'adult-snapshot-report-by-written-language-suppressed.csv',
              'ab470_adult_time_to_step_down_by_age_group':
                  'adult-time-to-step-down-by-age-group-suppressed.csv',
              'ab470_adult_time_to_step_down_by_race_group':
                  'adult-time-to-step-down-by-race-group-suppressed.csv',
              'ab470_adult_time_to_step_down_by_sex':
                  'adult-time-to-step-down-by-sex-suppressed.csv',
              'ab470_adult_time_to_step_down_by_language':
                  'adult-time-to-step-down-by-written-language-suppressed.csv',
              'ab470_adult_top_10_icd10_diag_code_categories_by_age_group':
                  'statewide-top-10-icd10-diagnosis-code-categories-for-adults-by-age-group-suppressed.csv',
              'ab470_adult_top_10_icd10_diag_code_categories_by_race_group':
                  'statewide-top-10-icd10-diagnosis-code-categories-for-adults-by-race-group-suppressed.csv',
              'ab470_adult_top_10_icd10_diag_code_categories_by_sex':
                  'statewide-top-10-icd10-diagnosis-code-categories-for-adults-by-sex-suppressed.csv',
              'ab470_adult_top_10_icd10_diag_code_categories_by_language':
                  'statewide-top-10-icd10-diagnosis-code-categories-for-adults-by-written-language-suppressed.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
