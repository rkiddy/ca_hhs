import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'vre_in_hospitals_2021': 'vre-bsi-in-hospitals-2021.csv',
              'vre_in_hospitals_2022': 'vre-bsi-in-hospitals-2022.csv',
              'vre_in_hospitals_2023': 'vre-bsi-in-hospitals-2023.csv',
              'vre_in_hospitals_2013': 'vre-in-california-hospitals-2013.csv',
              'vre_in_hospitals_2014': 'vre-in-california-hospitals-2014.csv',
              'vre_in_hospitals_2015': 'vre-in-california-hospitals-2015.csv',
              'vre_in_hospitals_2016': 'vre-in-california-hospitals-2016.csv',
              'vre_in_hospitals_2017': 'vre-in-california-hospitals-2017.csv',
              'vre_in_hospitals_2018': 'vre-in-california-hospitals-2018.csv',
              'vre_in_hospitals_2019': 'vre-in-california-hospitals-2019.csv',
              'vre_in_hospitals_2020_first_half': 'vre-in-hospitals-january-to-june-2020-updated-annually.csv',
              'vre_in_hospitals_2020_second_half': 'vre-in-hospitals-july-through-december-2020-updated-annually.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
