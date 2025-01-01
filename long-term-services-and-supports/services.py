import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'medi_cal_long_term_services_and_support_annual_data_archived': 'medi-cal-long-term-services-and-support-annual-data-archived.csv',
              'medi_cal_long_term_services_and_support_annual_data': 'medi-cal-long-term-services-and-support-annual-data.csv',
              'medi_cal_long_term_services_and_supports_data_2017': 'medi-cal-long-term-services-and-supports-data-2017.csv',
              'medi_cal_long_term_services_and_supports_data_2018': 'medi-cal-long-term-services-and-supports-data-2018.csv',
              'medi_cal_long_term_services_and_supports_data_2019': 'medi-cal-long-term-services-and-supports-data-2019.csv',
              'medi_cal_long_term_services_and_supports_data_2020': 'medi-cal-long-term-services-and-supports-data-2020.csv',
              'medi_cal_long_term_services_and_supports_data_2021': 'medi-cal-long-term-services-and-supports-data-2021.csv',
              'medi_cal_long_term_services_and_supports_data_2022': 'medi-cal-long-term-services-and-supports-data-2022.csv',
              'medi_cal_long_term_services_and_supports_data_archived': 'medi-cal-long-term-services-and-supports-data-archived.csv',
              'medi_cal_long_term_services_and_supports_data': 'medi-cal-long-term-services-and-supports-data.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'2017': '2017_value',
                '2018': '2018_value',
                '2019': '2019_value',
                '2020': '2020_value',
                '2021': '2021_value',
                '2022': '2022_value'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
