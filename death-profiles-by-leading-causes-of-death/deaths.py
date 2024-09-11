
# Different file sets:
#
# 1970-1978-final-deaths-by-month-statewide.csv
# 1970-1978-final-deaths-by-year-statewide.csv
# 1979-1998-final-deaths-by-month-statewide.csv
# 1979-1998-final-deaths-by-year-statewide.csv
# 1999-2013-final-deaths-by-month-statewide.csv
# 1999-2013-final-deaths-by-year-statewide.csv
# 2014-2022-final-deaths-by-month-statewide.csv
# 2014-2022-final-deaths-by-year-statewide.csv
# 2023-2024-provisional-deaths-by-month-statewide.csv
#
# 1970-1978-final-deaths-by-month-by-county.csv
# 1970-1978-final-deaths-by-year-by-county.csv
# 1979-1988-final-deaths-by-month-by-county.csv
# 1979-1998-final-deaths-by-year-by-county.csv
# 1989-1998-final-deaths-by-month-by-county.csv
# 1999-2013-final-deaths-by-year-by-county.csv
# 2014-2021-final-deaths-by-year-by-county.csv
# 2022-2023-provisional-deaths-by-month-by-county.csv
# 
# 1989-1998-final-deaths-by-year-by-zip-code.csv
# 1999-2008-final-deaths-by-year-by-zip-code.csv
# 2009-2018-final-deaths-by-year-by-zip-code.csv
# 2019-2021-final-deaths-by-year-by-zip-code.csv
# 
# 1970-1978-final-deaths-by-month-by-county.csv
# 1970-1978-final-deaths-by-year-by-county.csv
# 1979-1988-final-deaths-by-month-by-county.csv
# 1979-1998-final-deaths-by-year-by-county.csv
# 1989-1998-final-deaths-by-month-by-county.csv
# 1999-2003-final-deaths-by-month-by-occurrence-county.csv
# 1999-2003-final-deaths-by-month-by-residence-county.csv
# 2004-2008-final-deaths-by-month-by-occurrence-county.csv
# 2004-2008-final-deaths-by-month-by-residence-county.csv
# 2009-2013-final-deaths-by-month-by-occurrence-county.csv
# 2009-2013-final-deaths-by-month-by-residence-county.csv
# 2014-2018-final-deaths-by-month-by-occurrence-county.csv
# 2014-2018-final-deaths-by-month-by-residence-county.csv
# 2019-2021-final-deaths-by-month-by-occurrence-county.csv
# 2019-2021-final-deaths-by-month-by-residence-county.csv
# 

import sys

sys.path.append('..')

import csv_helper as csv

if __name__ == '__main__':

    tables = {'deaths_statewide_001': '1970-1978-final-deaths-by-month-statewide.csv',
              'deaths_statewide_002': '1970-1978-final-deaths-by-year-statewide.csv',
              'deaths_statewide_003': '1979-1998-final-deaths-by-month-statewide.csv',
              'deaths_statewide_004': '1979-1998-final-deaths-by-year-statewide.csv',
              'deaths_statewide_005': '1999-2013-final-deaths-by-month-statewide.csv',
              'deaths_statewide_006': '1999-2013-final-deaths-by-year-statewide.csv',
              'deaths_statewide_007': '2014-2022-final-deaths-by-month-statewide.csv',
              'deaths_statewide_008': '2014-2022-final-deaths-by-year-statewide.csv',
              'deaths_statewide_009': '2023-2024-provisional-deaths-by-month-statewide.csv'}

    csv.create_tables(tables)

    csv.read_data(tables)

    csv.db_exec_sql("drop table if exists death_profiles_by_county")

    csv.db_exec_sql("""create table death_profiles_by_county (
                           annotation_code varchar(1),
                           annotation_desc varchar(38),
                           cause_desc varchar(53),
                           cause varchar(3),
                           count varchar(6),
                           data_extract_date varchar(10),
                           data_revision_date varchar(10),
                           geography_type varchar(10),
                           icd_revision varchar(6),
                           month varchar(2),
                           strata_name varchar(49),
                           strata varchar(23),
                           year varchar(4))""")

    sql = """insert into death_profiles_by_county
             (annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,month,strata,strata_name,year)
             select annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,month,strata,strata_name,year
             from deaths_statewide_001"""
    csv.db_exec_sql(sql)

    sql = """insert into death_profiles_by_county
             (annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,strata,strata_name,year)
             select annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,strata,strata_name,year
             from deaths_statewide_002"""
    csv.db_exec_sql(sql)

    sql = """insert into death_profiles_by_county
             (annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,month,strata,strata_name,year)
             select annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,month,strata,strata_name,year
             from deaths_statewide_003"""
    csv.db_exec_sql(sql)

    sql = """insert into death_profiles_by_county
             (annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,strata,strata_name,year)
             select annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,strata,strata_name,year
             from deaths_statewide_004"""
    csv.db_exec_sql(sql)

    sql = """insert into death_profiles_by_county
             (annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,month,strata,strata_name,year)
             select annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,month,strata,strata_name,year
             from deaths_statewide_005"""
    csv.db_exec_sql(sql)

    sql = """insert into death_profiles_by_county
             (annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,strata,strata_name,year)
             select annotation_code,annotation_desc,cause,cause_desc,count,
              geography_type,strata,strata_name,year
             from deaths_statewide_006"""
    csv.db_exec_sql(sql)

    sql = """insert into death_profiles_by_county
             (annotation_code,annotation_desc,cause,cause_desc,count,icd_revision,data_revision_date,
              geography_type,month,strata,strata_name,year)
             select annotation_code,annotation_desc,cause,cause_desc,count,icd_revision,data_revision_date,
              geography_type,month,strata,strata_name,year
             from deaths_statewide_007"""
    csv.db_exec_sql(sql)

    sql = """insert into death_profiles_by_county
             (annotation_code,annotation_desc,cause,cause_desc,count,icd_revision,data_revision_date,
              geography_type,strata,strata_name,year)
             select annotation_code,annotation_desc,cause,cause_desc,count,icd_revision,data_revision_date,
              geography_type,strata,strata_name,year
             from deaths_statewide_008"""
    csv.db_exec_sql(sql)

    sql = """insert into death_profiles_by_county
             (annotation_code,annotation_desc,cause,cause_desc,count,icd_revision,data_revision_date,
              data_extract_date,geography_type,month,strata,strata_name,year)
             select annotation_code,annotation_desc,cause,cause_desc,count,icd_revision,data_revision_date,
              data_extract_date,geography_type,month,strata,strata_name,year
             from deaths_statewide_009"""
    csv.db_exec_sql(sql)

    csv.db_exec_sql("drop table if exists deaths_statewide_001")
    csv.db_exec_sql("drop table if exists deaths_statewide_002")
    csv.db_exec_sql("drop table if exists deaths_statewide_003")
    csv.db_exec_sql("drop table if exists deaths_statewide_004")
    csv.db_exec_sql("drop table if exists deaths_statewide_005")
    csv.db_exec_sql("drop table if exists deaths_statewide_006")
    csv.db_exec_sql("drop table if exists deaths_statewide_007")
    csv.db_exec_sql("drop table if exists deaths_statewide_008")
    csv.db_exec_sql("drop table if exists deaths_statewide_009")

    num = csv.db_exec_sql("select count(0) as count from death_profiles_by_county")[0]['count']

    print(f"\ndeath_profiles_by_county # {num}")
    print("")

