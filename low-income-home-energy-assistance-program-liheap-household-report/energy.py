import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'2023_low_income_home_energy_assistance_program_liheap_h_fb0839ed': '2023-low-income-home-energy-assistance-program-liheap-household-report.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'key': 'key_str'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
