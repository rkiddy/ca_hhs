
import csv as csv1

import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {
        'abortion_services_by_age_group_and_race':
            'abortion-related-services-funded-by-medi-cal-calendar-years-2014-2020-by-age-group-and-race-ethnicity.csv',
        'abortion_services_by_delivery_system_and_age_group':
            'abortion-related-services-funded-by-medi-cal-calendar-years-2014-2020-by-delivery-system-and-age-group.csv',
        'abortion_services_by_delivery_system_and_aid_group':
            'abortion-related-services-funded-by-medi-cal-calendar-years-2014-2020-by-delivery-system-and-aid-group.csv',
        'abortion_services_by_delivery_system_and_county':
            'abortion-related-services-funded-by-medi-cal-calendar-years-2014-2020-by-delivery-system-and-county.csv',
        'abortion_services_aid_code_groups':
            'aid-code-groups-for-abortion-related-services-datasets.csv',
        'abortion_services_expenditures_by_age_group_and_race':
            'fee-for-service-expenditures-for-abortion-related-services-funded-by-medi-cal-calendar-years-2014-2020-by-age-group-and-race-ethnicity.csv',
        'abortion_services_expenditures_by_age_group':
            'fee-for-service-expenditures-for-abortion-related-services-funded-by-medi-cal-calendar-years-2014-2020-by-age-group.csv',
        'abortion_services_expenditures_by_aid_group':
            'fee-for-service-expenditures-for-abortion-related-services-funded-by-medi-cal-calendar-years-2014-2020-by-aid-group.csv',
        'abortion_services_expenditures_by_county':
            'fee-for-service-expenditures-for-abortion-related-services-funded-by-medi-cal-calendar-years-2014-2020-by-county.csv',
        'abortion_services_procedure_codes':
            'procedure-codes-used-in-abortion-related-services-datasets.csv'}

    types = {'abortion_services_by_age_group_and_race': {'calendar_year': 'int', 'date_of_data': 'date'},
             'abortion_services_by_delivery_system_and_age_group': {'calendar_year': 'int', 'date_of_data': 'date'},
             'abortion_services_by_delivery_system_and_aid_group': {'calendar_year': 'int', 'date_of_data': 'date'},
             'abortion_services_by_delivery_system_and_county': {'calendar_year': 'int', 'date_of_data': 'date'},
             'abortion_services_expenditures_by_age_group': {'calendar_year': 'int', 'date_of_data': 'date'},
             'abortion_services_expenditures_by_age_group_and_race': {'calendar_year': 'int', 'date_of_data': 'date'},
             'abortion_services_expenditures_by_aid_group': {'calendar_year': 'int', 'date_of_data': 'date'},
             'abortion_services_expenditures_by_county': {'calendar_year': 'int', 'date_of_data': 'date'}}

    csv.create_tables(tables, types)
    csv.read_data(tables, types)

    csv.db_exec_sql("drop table if exists abortion_services_aid_code_groups")

    sql = """create table abortion_services_aid_code_groups (
                 aid_code_group varchar(63),
                 corresponding_aid_code char(2))"""
    csv.db_exec_sql(sql)

    file = 'aid-code-groups-for-abortion-related-services-datasets.csv'

    num = 0

    with open(file, newline='', encoding='latin1') as csvfile:
        rdr = csv1.DictReader(csvfile)

        for row in rdr:

            next_row = dict()

            for key in row:
                next_row[csv.fix_col_head(key)] = row[key]

            row = next_row

            val1 = csv.fix(row['aid_code_group'])
            for part in row['corresponding_aid_codes'].split(', '):
                part = part.strip()
                if part == 'Blank':
                    part = '  '
                sql = f"insert into abortion_services_aid_code_groups values ({val1}, {csv.fix(part)})"
                csv.db_exec_sql(sql)
                num += 1

    print(f"\naid-code-groups-for-abortion-related-services-datasets.csv -> abortion_services_aid_code_groups # {num}")
    print("")
