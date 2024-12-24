import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'2021_hospital_supplier_diversity_individual_report_extract': '2021-hospital-supplier-diversity-individual-report-extract.csv'}

    types = {'2021_hospital_supplier_diversity_individual_report_extract':
                {'supplier_diversity_statement': 'text',
	         'encourage_suppliers': 'text',
	         'encourage_employees': 'text',
	         'conduct_outreach_comm': 'text',
	         'certification_support': 'text',
	         'other_relevant_info': 'text'}}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
