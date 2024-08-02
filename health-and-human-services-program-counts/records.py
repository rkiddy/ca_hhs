
import csv
import traceback

from sqlalchemy import create_engine

sys.path.append('..')

import config

cfg = config.cfg()

engine = create_engine(f"mysql+pymysql://{cfg['USR']}:{cfg['PWD']}@{cfg['HOST']}/{cfg['DB']}")
conn = engine.connect()


def db_exec(eng, this_sql):
    # print(f"sql: {sql}")
    if this_sql.strip().startswith('select'):
        return [dict(row) for row in eng.execute(this_sql).fetchall()]
    else:
        # print(f"sql: {this_sql}")
        return eng.execute(this_sql)
        foo = intput()

def fix(val):
    if val is None or val == '':
        return 'NULL'
    else:
        val = val.replace("'", "''")
        return f"'{val}'"


def fix_int(val):
    if val is None or val == '':
        return 'NULL'
    else:
        return val


def fix_key(s):
    # look, per character, and find the the first low-ascii.
    found_idx = None
    for idx in range(len(s)):
        c = s[idx]
        if ord(c) < 128:
            found_idx = idx
            break
    if found_idx is None:
        raise Exception("Why can I not find a valid character in this? str:|{s}|")
    else:
        return s[found_idx:]


cols = {'fileyear': 'fileyear',
        'Program': 'program',
        'Level': 'level',
        'Number': 'level_num',
        'Person': 'person',
        'Cases': 'cases',
        'Medi-Cal': 'medical',
        'ACA': 'aca',
        'FPACT': 'fpact',
        'CalFresh': 'calfresh',
        'CalWorks': 'calworks',
        'IHSS': 'ihhs',
        'Child Welfare': 'child_welfare',
        'Foster Care': 'foster_care',
        'DDS': 'dds',
        'WIC': 'wic',
        'Black': 'black',
        'White': 'white',
        'Hispanic': 'hispanic',
        'Asian_PI': 'asian_pi',
        'Native_American': 'native_american',
        'Other_missing': 'other_missing',
        'Female': 'female',
        'Male': 'male',
        'Unknown/Other Gender': 'unknown_gender',
        'age1 missing': 'age1_missing',
        '17 and Under': 'age_17_and_under',
        '18 and Over': 'age_18_and_over',
        '18-64': 'age_18_to_64',
        '65 and Over': 'age_65_and_over',
        '18 to 59': 'age_18_to_59',
        '60 and Over': 'age_60_and_over',
        '1 program': '1_program',
        '2 programs': '2_program',
        '3 programs': '3_program',
        '4 programs': '4_program',
        '5+ programs': '5_plus_program',
        '1 department': '1_dept',
        '2 departments': '2_dept',
        '3 departments': '3_dept',
        '4 departments': '4_dept',
        'fc age missing': 'fc_age_missing',
        'age 0': 'age_0',
        '1 to 2': 'age_1_to_2',
        '3 to 5': 'age_3_to_5',
        '6 to 10': 'age_6_to_10',
        '11 to 15': 'age_11_to_15',
        '16 to 17': 'age_16_to_17',
        '18 to 20': 'age_18_to_20',
        'wic_age_adult_missing': 'wic_age_adult_missing',
        'less than 19': 'age_less_than_19',
        '20 to 24': 'age_20_to_24',
        '25 to 29': 'age_25_to_29',
        '30 to 34': 'age_30_to_34',
        '35 and over': 'age_35_and_over',
        'wic_age_child_missing': 'wic_age_child_missing',
        'wic age 0': 'wic_age_0',
        'wic age 1': 'wic_age_1',
        'wic age 2': 'wic_age_2',
        'wic age 3': 'wic_age_3',
        'wic age 4': 'wic_age_4',
        'wic age 5 to 19': 'wic_age_5_to_19',
        'wic age 20 and Over': 'wic_20_and_over'}


files = {'record-reconciliation-2015-2021-annual-data-file.csv': 'hhs_program_annual_counts',
         'record-reconciliation-2015-2021-annual-masking-key.csv': 'hhs_program_annual_masks',
         'record-reconciliation-2015-2021-july-data-file.csv': 'hhs_program_july_counts',
         'record-reconciliation-2015-2021-july-masking-key.csv': 'hhs_program_july_masks'}


tables = [files[key] for key in files]


if __name__ == '__main__':

    maskables = list(cols.keys())
    maskables.remove('fileyear')
    maskables.remove('Program')
    maskables.remove('Level')
    maskables.remove('Number')

    print("creating tables...")
    for table in tables:
        sql = f"drop table if exists {table}"
        db_exec(conn, sql)

        sqls = [f"create table {table} ("]
        for key in cols:
            sqls.append(f"    {cols[key]} varchar(63),")
        sqls[-1] = sqls[-1].replace(',', ')')
        db_exec(conn, '\n'.join(sqls))

    num = 1

    for file in files:
        print(f"processing: {file}")

        table = files[file]

        with open(file, newline='', encoding='latin1') as csvfile:
            rdr = csv.DictReader(csvfile)
            for row in rdr:

                # We have a weird key with high-ascii characters.
                next_row = dict()
                for key in row:
                    if key.endswith('fileyear'):
                        next_row['fileyear'] = row[key]
                    else:
                        next_row[key] = row[key]
                row = next_row

                col_names = list()
                col_values= list()

                for key in cols:
                    col_names.append(fix_int(cols[key]))
                    col_values.append(fix(str(row[key])))

                sql = f"insert into {table} ("
                sql += ', '.join(col_names)
                sql += ") values ("
                sql += ', '.join(col_values)
                sql += ")"

                # print(f"sql: {sql}")
                db_exec(conn, sql)
        
        sql = f"alter table {table} add index(fileyear, program, level, level_num)"
        # print(f"sql: {sql}")
        db_exec(conn, sql)

        if table.endswith('counts'):
            for key in cols:
                if key in maskables:

                    col = cols[key]
                    sql = f"update {table} set {col} = NULL where {col} in ('*1', '*2', '*3')"
                    # print(f"sql: {sql}")
                    db_exec(conn, sql)

                    sql = f"alter table {table} change column {col} {col} int"
                    # print(f"sql: {sql}")
                    db_exec(conn, sql)

