import sys

sys.path.append('..')

import csv_helper as csv

codes = [['A', 'Pay and Chase (applies to any carrier)'],
         ['C', 'Military Benefits Comprehensive'],
         ['D', 'Medicare Part D Prescription Drug Coverage'],
         ['E', 'Vision Plans'],
         ['F', 'Medicare Part C Health Plan'],
         ['G', 'Medical Parolee'],
         ['H', 'Multiple Plans Comprehensive'],
         ['K', 'Kaiser'],
         ['L', 'Dental Only Policies'],
         ['P', 'PPO/PHP/HMO/EPO not otherwise specified'],
         ['Q', 'Commercial Pharmacy Plans'],
         ['V', 'Any carrier other than the above (includes multiple coverage)'],
         ['W', 'Multiple Plans Non-Comprehensive']]

if __name__ == '__main__':

    tables = {'carriers': 'automated-eligibility-verification-system-aevs-carrier-codes-for-other-health-coverage.csv'}

    types = {}

    replaces = {}

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    sql = "drop table if exists carrier_codes"
    csv.db_exec_sql(sql)

    sql = "create table carrier_codes (code char, description varchar(63))"
    csv.db_exec_sql(sql)

    print("\ncreated table carrier_codes")

    num = 0
    for code in codes:
        sql = f"insert into carrier_codes values ('{code[0]}', '{code[1]}')"
        csv.db_exec_sql(sql)    
        num += 1

    print(f"\nadded lines # {num}")

    print("")
