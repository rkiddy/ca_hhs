import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'analytics_date_and_users': 'ga-date-and-users.csv',
              'analytics_pages_and_events': 'ga-date-pages-and-events.csv',
              'analytics_dates_pages_page_views': 'ga-dates-pages-page-views.csv',
              'analytics_users_by_locations': 'ga-users-by-location.csv'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
