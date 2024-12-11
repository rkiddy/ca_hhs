import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'ccs_approved_hospitals': 'california-childrens-services-ccs-approved-hospitals.csv',
              'ccs_paneled_providers': 'california-childrens-services-ccs-paneled-providers.csv',
              'ccs_non_providers':
                  'california-childrens-services-ccs-paneled-providers-non-provider-master-file-pmf.csv',
              'ccs_special_care_centers': 'california-childrens-services-ccs-special-care-centers.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
