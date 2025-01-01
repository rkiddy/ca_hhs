import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'utilization_rates_for_selected_medical_procedures_in_ca_e6936965': 'utilization-rates-for-selected-medical-procedures-in-california-hospitals-2016-2019-.csv',
              'utilization_rates_for_selected_medical_procedures_in_ca_a77ed52c': 'utilization-rates-for-selected-medical-procedures-in-california-hospitals-2005-2015-.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'procedure': 'procedure_name'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
