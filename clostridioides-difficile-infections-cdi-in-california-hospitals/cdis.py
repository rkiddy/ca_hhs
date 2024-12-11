import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'cdis_in_hospitals_2013': 'cdis-in-hospitals-2013.csv',
              'cdis_in_hospitals_2014': 'cdis-in-hospitals-2014.csv',
              'cdis_in_hospitals_2015': 'cdis-in-hospitals-2015.csv',
              'cdis_in_hospitals_2016': 'cdis-in-hospitals-2016.csv',
              'cdis_in_hospitals_2017': 'cdis-in-hospitals-2017.csv',
              'cdis_in_hospitals_2018': 'cdis-in-hospitals-2018.csv',
              'cdis_in_hospitals_2019': 'cdis-in-hospitals-2019.csv',
              'cdis_in_hospitals_2020_p1': 'cdis-in-january-through-june-2020-updated-annually.csv',
              'cdis_in_hospitals_2020_p2': 'cdis-in-july-through-december-2020-updated-annually.csv',
              'cdis_in_hospitals_2021': 'cdis-in-hospitals-2021.csv',
              'cdis_in_hospitals_2022': 'cdis-in-hospitals-2022.csv',
              'cdis_in_hospitals_2023': 'cdis-in-hospitals-2023.csv',
              'cdis_in_ltacs_2013': 'cdis-in-ltacs-2013.csv',
              'cdis_in_ltacs_2014': 'cdis-in-ltacs-2014.csv',
              'cdis_in_ltacs_2015': 'cdis-in-ltacs-2015.csv',
              'cdis_in_rehabs_2013': 'cdis-in-rehabs-2013.csv',
              'cdis_in_rehabs_2014': 'cdis-in-rehabs-2014.csv',
              'cdis_in_rehabs_2015': 'cdis-in-rehabs-2015.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
