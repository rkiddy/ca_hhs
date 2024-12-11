import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'dept_state_hospitals_dept_wide_violence_data': 'department-of-state-hospitals-dsh-wide-violence-data.csv',
              'dept_state_hospitals_violence_patients_treated_by_year': 'patients-treated-by-year.csv',
              'dept_state_hospitals_violence_total_patient_days': 'total-patient-days.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
