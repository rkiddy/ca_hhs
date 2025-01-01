import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

1995-1999-combined-cy-hospital-annual-selected-file.csv
1995-cy-hospital-annual-selected-file.csv
1996-cy-hospital-annual-selected-file.csv
1997-cy-hospital-annual-selected-file.csv
1998-cy-hospital-annual-selected-file.csv
1999-cy-hospital-annual-selected-file.csv
2000-cy-partial-6-30-00-12-31-00-hospital-annual-selected-file.csv
2000-cy-partial-7-1-99-6-29-00-hospital-annual-selected-file.csv


    tables = {'1995_1999_combined_cy_hospital_annual_selected_file': '',  
              '1995_cy_hospital_annual_selected_file': '',
              '1996_cy_hospital_annual_selected_file': '',
              '1997_cy_hospital_annual_selected_file': '',
              '1998_cy_hospital_annual_selected_file': '',
              '1999_cy_hospital_annual_selected_file': '',
              '2000_cy_partial_6_30_00_12_31_00_hospital_annual_selected_file': '',
              '2000_cy_partial_7_1_99_6_29_00_hospital_annual_selected_file': ''}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
