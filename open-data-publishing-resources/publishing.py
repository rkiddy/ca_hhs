
import os
import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    is_first = False

    extra = 'Notes'

    next1 = open("2019-20-open-data-publishing-plan.csv_next", "w")
    with open("2019-20-open-data-publishing-plan.csv", "r", encoding='latin-1') as old1:
        for line in old1:
            line2 = line.strip()
            next1.write(f"{line2}{extra}\n")
            extra = ''

    os.replace("2019-20-open-data-publishing-plan.csv_next", "2019-20-open-data-publishing-plan.csv")

    tables = {'2016_17_open_data': '2016-17-open-data-publishing-plan.csv',
              '2017_18_open_data': '2017-18-open-data-publishing-plan.csv',
              '2018_19_open_data': '2018-19-open-data-publishing-plan.csv',
              '2019_20_open_data': '2019-20-open-data-publishing-plan.csv'}

    # types = {'table': {
    #              'col': 'type'}}

    csv.create_tables(tables)
    csv.read_data(tables)

    csv.db_exec_sql("drop table if exists open_data_publishing")

    csv.db_exec_sql("""create table open_data_publishing (
                          publishing_quarter varchar(7),
                          publishing_year varchar(4),
                          dataset_name varchar(201),
                          dataset_description varchar(1706),
                          dataset_category varchar(37),
                          publishing_department varchar(59),
                          published_date varchar(22),
                          status varchar(9),
                          notes varchar(90))""")

    sql = """insert into open_data_publishing
                 (publishing_quarter, dataset_name, dataset_description, publishing_department, dataset_category)
                 select publishing_quarter, dataset_name, dataset_description, publishing_department, dataset_category
                 from 2016_17_open_data"""
    csv.db_exec_sql(sql)

    csv.db_exec_sql("drop table if exists 2016_17_open_data")

    sql = """insert into open_data_publishing
                 (publishing_quarter, publishing_year, dataset_name, dataset_description, publishing_department,
                  dataset_category, status, published_date, notes)
                 select publishing_quarter, publishing_year, dataset_name, dataset_description, publishing_department,
                  dataset_category, status, published_date, notes from 2017_18_open_data"""
    csv.db_exec_sql(sql)

    csv.db_exec_sql("drop table if exists 2017_18_open_data")

    sql = """insert into open_data_publishing
                 (publishing_quarter, publishing_year, dataset_name, dataset_description, publishing_department,
                  dataset_category, status, published_date, notes)
                 select publishing_quarter, publishing_year, dataset_name, dataset_description, publishing_department,
                  dataset_category, status, published_date, notes from 2018_19_open_data"""
    csv.db_exec_sql(sql)
 
    csv.db_exec_sql("drop table if exists 2018_19_open_data")

    sql = """insert into open_data_publishing
                 (publishing_quarter, publishing_year, dataset_name, dataset_description, publishing_department,
                  dataset_category, notes)
                 select target_publishing_quarter, target_publishing_year, dataset_name, description,
                     publishing_department, dataset_category, notes from 2019_20_open_data"""
    csv.db_exec_sql(sql)

    csv.db_exec_sql("drop table if exists 2019_20_open_data")

    num = csv.db_exec_sql("select count(0) as count from open_data_publishing")[0]['count']

    print(f"\nopen_data_publishing # {num}")

    print("")

