import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'ltc_citation_narratives_2012_2017_data_file': 'ltc-citation-narratives-2012-2017-data-file.csv'}

    types = {'ltc_citation_narratives_2012_2017_data_file': {'narrative': 'text'}}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
