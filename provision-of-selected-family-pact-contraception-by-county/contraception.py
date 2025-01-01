import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'provision_of_selected_family_pact_contraception_by_coun_a041bb14': 'provision-of-selected-family-pact-contraception-by-county-fy-2014-15-to-current-fy-available.csv',
'provision_of_selected_family_pact_contraception_by_coun_110325db': 'provision-of-selected-family-pact-contraception-by-county-fys-2003-04-to-2005-06.csv',
'provision_of_selected_family_pact_contraception_by_coun_5295c727': 'provision-of-selected-family-pact-contraception-by-county-fys-2009-10-to-2010-11.csv',
'provision_of_selected_family_pact_contraception_by_coun_14407238': 'provision-of-selected-family-pact-contraception-by-county-fy-2007-08.csv',
'provision_of_selected_family_pact_contraception_by_coun_897fbf9f': 'provision-of-selected-family-pact-contraception-by-county-fy-2008-09.csv',
'provision_of_selected_family_pact_contraception_by_coun_08670633': 'provision-of-selected-family-pact-contraception-by-county-fys-2011-12-to-2013-14.csv',
'provision_of_selected_family_pact_contraception_by_coun_c896db56': 'provision-of-selected-family-pact-contraception-by-county-fy-2006-07.csv',
'provision_of_selected_family_pact_contraception_by_coun_a3e00177': 'provision-of-selected-family-pact-contraception-by-county-fys-2014-15-to-current-fy-available.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'providers_reimbursed_for_tubal_ligation_services_female_sterilization': 'providers_reimbursed_for_tubal_ligation_services',
                'providers_reimbursed_for_tubal_ligation_service_female_sterilization': 'providers_reimbursed_for_tubal_ligation_service',
                'providers_reimbursed_for_female_tubal_ligation_sterilization_services': 'providers_reimbursed_for_female_tubal_ligation',
                'providers_reimbursed_for_tubal_ligation_female_sterilization_services': 'providers_reimbursed_for_tubal_ligation'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
