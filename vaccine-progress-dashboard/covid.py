import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'covid_vacc_admin_by_demo_updated_vacc_archived':
                  'covid-19-vaccines-administered-by-demographics-2023-2024-updated-vaccine-archived.csv',
              'covid_vacc_admin_by_demo_booster_archived':
                  'covid-19-vaccines-administered-by-demographics-booster-metric-archived.csv',
              'covid_vacc_admin_by_demo_by_county_updated_vacc_archived':
                  'covid-19-vaccines-administered-by-demographics-by-county-2023-2024-updated-vaccine-archived.csv',
              'covid_vacc_admin_by_demo_by_county_age_16':
                  'covid-19-vaccines-administered-by-demographics-by-county-age-16-archived.csv',
              'covid_vacc_admin_by_demo_by_county_age_5':
                  'covid-19-vaccines-administered-by-demographics-by-county-age-5-archived.csv',
              'covid_vacc_admin_by_demo_by_county_booster_archived':
                  'covid-19-vaccines-administered-by-demographics-by-county-booster-metric-archived.csv',
              'covid_vacc_admin_by_demo_by_county':
                  'covid-19-vaccines-administered-by-demographics-by-county.csv',
              'covid_vacc_admin_by_demo':
                  'covid-19-vaccines-administered-by-demographics.csv',
              'covid_vacc_admin_by_hpi_quart_updated_vacc_archived':
                  'covid-19-vaccines-administered-by-hpi-quartile-2023-2024-updated-vaccine-archived.csv',
              'covid_vacc_admin_by_hpi_quart_booster_archived':
                  'covid-19-vaccines-administered-by-hpi-quartile-booster-metric-archived.csv',
              'covid_vacc_admin_by_hpi_quartile':
                  'covid-19-vaccines-administered-by-hpi-quartile.csv',
              'covid_vacc_admin_by_vem_quart_age_16':
                  'covid-19-vaccines-administered-by-vem-quartile-age-16-archived.csv',
              'covid_vacc_admin_by_vem_quart_age_5':
                  'covid-19-vaccines-administered-by-vem-quartile-age-5-archived.csv',
              'covid_vacc_admin_by_vem_quart':
                  'covid-19-vaccines-administered-by-vem-quartile.csv',
              'covid_vacc_shipped_on_hand_archived0':
                  'covid-19-vaccines-shipped-delivered-on-hand-archived0.csv',
              'covid_vacc_shipped_on_hand_archived':
                  'covid-19-vaccines-shipped-delivered-on-hand-archived.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
