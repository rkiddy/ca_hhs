import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'hcp_flu_vacc_by_county_2016_2017': 'hcp-influenza-vaccination-by-county-2016-2017.csv',
              'hcp_flu_vacc_by_county_2017_2018': 'hcp-influenza-vaccination-by-county-2017-2018.csv',
              'hcp_flu_vacc_by_county_2018_2019': 'hcp-influenza-vaccination-by-county-2018-2019.csv',
              'hcp_flu_vacc_by_hosp_county_2016_2017': 'hcp-influenza-vaccination-by-hosp-county-2016-2017.csv',
              'hcp_flu_vacc_by_hosp_county_2017_2018': 'hcp-influenza-vaccination-by-hosp-county-2017-2018.csv',
              'hcp_flu_vacc_by_hosp_county_2018_2019': 'hcp-influenza-vaccination-by-hosp-county-2018-2019.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'<=': ' le ', '>=': ' ge '}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
