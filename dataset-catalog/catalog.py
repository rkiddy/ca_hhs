import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'catalog': 'catalog.csv'}

    types = {'catalog': {'description': 'text',
                         'program': 'text',
                         'temporal_coverage': 'text',
                         'spatial_geographic_coverage': 'text',
                         'de_identification_method': 'text',
                         'data_collection_tool': 'text',
                         'additional_limitations': 'text',
                         'additional_information': 'text',
                         'related_resources': 'text',
                         'secondary_sources': 'text',
                         'citation': 'text',
                         'tags': 'text'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
