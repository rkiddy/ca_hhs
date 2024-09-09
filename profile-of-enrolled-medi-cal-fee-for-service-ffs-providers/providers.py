
import sys

sys.path.append('..')

import csv_helper as csv_help


if __name__ == '__main__':

    tables = {'medicaid_ffs_providers': 'enrolled-medi-cal-fee-for-service-ffs-providers.csv'}

    types = {'medicaid_ffs_providers': {
                 'owner_number': 'int',
                 'service_location_number': 'int',
                 'enroll_status_eff_dt': 'date', 
                 'latitude': 'decimal(12,8)',
                 'longitude': 'decimal(12,8)'}}

    csv_help.create_tables(tables, types)
    csv_help.read_data(tables, types)

    sql = "update medicaid_ffs_providers set countyname = substr(countyname,1,length(countyname)-7) where countyname like '%% County';"
    csv_help.db_exec_sql(sql)

    sql = "update medicaid_ffs_providers set out_of_state_indicator = NULL where out_of_state_indicator = 'N/A'"
    csv_help.db_exec_sql(sql)

    csv_help.db_exec_sql("alter table medicaid_ffs_providers change column out_of_state_indicator out_of_state_indicator int")

    print("")
