import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'facility_listing_01': 'current-california-healthcare-facility-listing.csv',
              'facility_listing_02': 'licensed-healthcare-facility-listing-december-31-2016-.csv',
              'facility_listing_03': 'licensed-healthcare-facility-listing-december-31-2017.csv',
              'facility_listing_04': 'licensed-healthcare-facility-listing-december-31-2018.csv',
              'facility_listing_05': 'licensed-healthcare-facility-listing-december-31-2019.csv',
              'facility_listing_06': 'licensed-healthcare-facility-listing-december-31-2020.csv',
              'facility_listing_07': 'licensed-healthcare-facility-listing-december-31-2021.csv',
              'facility_listing_08': 'licensed-healthcare-facility-listing-december-31-2022.csv',
              'facility_listing_09': 'licensed-healthcare-facility-listing-june-30-2017.csv',
              'facility_listing_10': 'licensed-healthcare-facility-listing-june-30-2018.csv',
              'facility_listing_11': 'licensed-healthcare-facility-listing-june-30-2019.csv',
              'facility_listing_12': 'licensed-healthcare-facility-listing-june-30-2020.csv',
              'facility_listing_13': 'licensed-healthcare-facility-listing-june-30-2021.csv',
              'facility_listing_14': 'licensed-healthcare-facility-listing-june-30-2022.csv',
              'facility_listing_15': 'licensed-healthcare-facility-listing-june-30-2023.csv'}

    dates = {'facility_listing_01': 'current',
             'facility_listing_02': '2016-12-31',
             'facility_listing_03': '2017-12-31',
             'facility_listing_04': '2018-12-31',
             'facility_listing_05': '2019-12-31',
             'facility_listing_06': '2020-12-31',
             'facility_listing_07': '2021-12-31',
             'facility_listing_08': '2022-12-31',
             'facility_listing_09': '2017-06-30',
             'facility_listing_10': '2018-06-30',
             'facility_listing_11': '2019-06-30',
             'facility_listing_12': '2020-06-30',
             'facility_listing_13': '2021-06-30',
             'facility_listing_14': '2022-06-30',
             'facility_listing_15': '2023-06-30'}

    types = {}
    # {'table': {'col': 'type'}}

    replaces = {}
    # {'bad_name1': 'good_name1', 'bad_name2': 'good_name2'}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    csv.db_exec_sql("drop table if exists licensed_healthcare_facility_listing")

    sql = f"""
              create table licensed_healthcare_facility_listing (
                  period varchar(10),
                  oshpd_id char(9),
                  facility_name varchar(127),
                  license_num varchar(63),
                  facility_level_desc varchar(63),
                  dba_address1 varchar(63),
                  dba_city varchar(63),
                  dba_zip_code varchar(10),
                  county_code varchar(2),
                  county_name varchar(63),
                  er_service_level_desc varchar(63),
                  total_number_beds varchar(11),
                  facility_status_desc varchar(63),
                  facility_status_date varchar(63),
                  license_type_desc varchar(63),
                  license_category_desc varchar(63),
                  latitude varchar(20),
                  longitude varchar(20))"""
    print("creating table licensed_healthcare_facility_listing...")
    csv.db_exec_sql(sql)

    for idx in range(1,16):
        source = f"facility_listing_{str(idx).zfill(2)}"
        print(f"inserting contents of {source}...")

        sql = f"""insert into licensed_healthcare_facility_listing
                      (oshpd_id, facility_name, license_num, facility_level_desc, dba_address1,
                       dba_city, dba_zip_code, county_code, county_name, er_service_level_desc,
                       total_number_beds, facility_status_desc, facility_status_date, license_type_desc,
                       license_category_desc, latitude, longitude)
                  select
                      oshpd_id, facility_name, license_num, facility_level_desc, dba_address1,
                      dba_city, dba_zip_code, county_code, county_name, er_service_level_desc,
                      total_number_beds, facility_status_desc, facility_status_date, license_type_desc,
                      license_category_desc, latitude, longitude
                  from {source}"""
        csv.db_exec_sql(sql)

        sql = f"update licensed_healthcare_facility_listing set period = '{dates[source]}' where period is NULL"
        csv.db_exec_sql(sql)

    print("fixing table columns...")

    csv.db_exec_sql("alter table licensed_healthcare_facility_listing add index (period)")
    csv.db_exec_sql("alter table licensed_healthcare_facility_listing add index (oshpd_id)")
    csv.db_exec_sql("alter table licensed_healthcare_facility_listing add index (facility_name)")
    csv.db_exec_sql("alter table licensed_healthcare_facility_listing add index (facility_status_date)")

    csv.db_exec_sql("update licensed_healthcare_facility_listing set total_number_beds = replace(total_number_beds, ',', '')")

    csv.db_exec_sql("alter table licensed_healthcare_facility_listing change column total_number_beds total_number_beds int")

    csv.db_exec_sql("alter table licensed_healthcare_facility_listing change column latitude latitude decimal(12,8)")
    csv.db_exec_sql("alter table licensed_healthcare_facility_listing change column longitude longitude decimal(12,8)")

    print("fixing data values...")

    sql = "select distinct(facility_status_date) from licensed_healthcare_facility_listing"
    for row in csv.db_exec_sql(sql):
        found_date = row['facility_status_date']
        next_date = csv.fix_date(found_date)
        # print(f"start: {found_date}, next: {next_date}")
        if f"'{found_date}'" != next_date:
            sql = f"""update licensed_healthcare_facility_listing set facility_status_date = {next_date}
                      where facility_status_date = '{found_date}'"""
            csv.db_exec_sql(sql)        

    csv.db_exec_sql("alter table licensed_healthcare_facility_listing change column " \
                    "facility_status_date facility_status_date date")

    print("dropping in-process tables...")

    for idx in range(1,16):
        source = f"facility_listing_{str(idx).zfill(2)}"
        csv.db_exec_sql(f"drop table if exists {source}")

    print("Done.\n")

