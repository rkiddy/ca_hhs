import sys

sys.path.append('..')

import csv_helper as csv


if __name__ == '__main__':

    tables = {'deaths_by_zip_1989': '1989-1998-final-deaths-by-year-by-zip-code.csv',
              'deaths_by_zip_1999': '1999-2008-final-deaths-by-year-by-zip-code.csv',
              'deaths_by_zip_2009': '2009-2018-final-deaths-by-year-by-zip-code.csv',
              'deaths_by_zip_2019': '2019-2022-final-deaths-by-year-by-zip-code.csv'}

    types = {}

    replaces = {}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    sqls = ['create table deaths_by_zip like deaths_by_zip_1989',
            'alter table deaths_by_zip change column icd_revision icd_revision varchar(6)',
            'insert into deaths_by_zip select * from deaths_by_zip_1989',
            'insert into deaths_by_zip select * from deaths_by_zip_1999',
            'insert into deaths_by_zip select * from deaths_by_zip_2009',
            'insert into deaths_by_zip select * from deaths_by_zip_2019',
            'drop table deaths_by_zip_1989',
            'drop table deaths_by_zip_1999',
            'drop table deaths_by_zip_2009',
            'drop table deaths_by_zip_2019']

    for sql in sqls:
        csv.db_exec_sql(sql)

    print("")
