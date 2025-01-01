import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'bridge_period_2019_20_cohs_model_rates': 'bridge-period-2019-20-county-organized-health-system-model-rates.csv',
              'calendar_year_2021_cohs_rates': 'calendar-year-2021-county-organized-health-systems-cohs-rates.csv',
              'calendar_year_2022_cohs_rates': 'calendar-year-2022-county-organized-health-systems-cohs-rates.csv',
              'calendar_year_2023_cohs_rates': 'calendar-year-2023-county-organized-health-systems-cohs-rates.csv',
              'state_fiscal_year_2015_16_cohs_rates': 'state-fiscal-year-2015-16-county-organized-health-systems-cohs-rates.csv',
              'state_fiscal_year_2016_17_cohs_rates': 'state-fiscal-year-2016-17-county-organized-health-systems-cohs-rates.csv',
              'state_fiscal_year_2017_18_cohs_rates': 'state-fiscal-year-2017-18-county-organized-health-systems-cohs-rates.csv',
              'state_fiscal_year_2018_19_cohs_rates': 'state-fiscal-year-2018-19-county-organized-health-systems-cohs-rates.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
