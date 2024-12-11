import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':


    tables = {'hospital_perf_ratings_for_artery_bypass_surgery_2011_2018':
                  '2011-2018-california-hospital-performance-ratings-for-coronary-artery-bypass-graft-cabg-surgery.csv',
              'hospital_perf_ratings_for_artery_bypass_surgery_2018_2022':
                  '2018-2022-california-hospital-performance-ratings-for-coronary-artery-bypass-graft-cabg-surgery.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {'(%,RAAER)': ''}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
