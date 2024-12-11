import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'wic_part_a_redemptions_by_vendor_county':
                  '2010-2018-part-a-wic-redemptions-by-vendor-county-with-family-counts.csv',
              'wic_part_b_redemptions_by_vendor_county':
                  '2019-2020-part-b-wic-redemptions-by-vendor-county-with-family-counts.csv',
              'wic_part_c_ebt_redemptions_by_vendor_county':
                  '2021-2022-forward-part-c-wic-ebt-redemptions-by-vendor-county-with-family-counts.csv',
              'wic_redemptions_by_participant_category':
                  'wic-redemption-by-vendor-county-by-participant-category-data-2010-2018-.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'year_month': 'year_month_str'}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
