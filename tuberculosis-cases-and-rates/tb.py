import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'tb_by_place_age_sex_race_ethnic': 'tb-by-place-of-birth-age-sex-and-race-ethnicity.csv',
              'tb_in_local_health_jurisdiction': 'tb-in-local-health-jurisdiction.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
