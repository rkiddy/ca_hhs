
import csv
import sys
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
        val = val.replace("'", "''").replace('%', '%%')
        return f"'{val}'"

def fix_int(val):
    if val is None or val == '':
        return 'NULL'
    else:
        return val


def column_names(table):
    found_cols = list()
    sql = f"desc {table}"
    rows = db_exec(conn, sql)
    for row in rows:
        found_cols.append(row[0])
    return found_cols


if __name__ == '__main__':

    db_exec(conn, "drop table if exists facility_profiles")

    sql = """
          create table facility_profiles (
              facility_desc varchar(255),
              site_address1 varchar(63),
              site_address2 varchar(63),
              site_city varchar(63),
              site_zip varchar(63),
              site_x_coordinate decimal(10,2),
              site_y_coordinate decimal(10,2),
              oshpd_id char(9),
              license_type_desc varchar(63),
              license_category_desc varchar(63),
              license_number char(9),
              facility_level_desc varchar(63),
              er_service_level_desc varchar(63),
              licensed_beds varchar(63),
              facility_status_desc varchar(63),
              financial_facility_count int,
              consolidated_facility_desc_pipe varchar(255),
              consolidated_facility_desc_comma varchar(255),
              period_begin_date varchar(63),
              period_end_date varchar(63),
              net_pat_rev_medicare_traditional_ip bigint,
              net_pat_rev_medicare_managed_ip bigint,
              net_pat_rev_medi_cal_traditional_ip bigint,
              net_pat_rev_medi_cal_managed_ip bigint,
              net_pat_rev_county_indigent_traditional_ip bigint,
              net_pat_rev_county_indigent_managed_ip bigint,
              net_pat_rev_third_party_traditional_ip bigint,
              net_pat_rev_third_party_managed_ip bigint,
              net_pat_rev_other_indigent_ip bigint,
              net_pat_rev_other_payer_ip bigint,
              net_pat_rev_total_ip bigint,
              net_pat_rev_medicare_traditional_op bigint,
              net_pat_rev_medicare_managed_op bigint,
              net_pat_rev_medi_cal_traditional_op bigint,
              net_pat_rev_medi_cal_managed_op bigint,
              net_pat_rev_county_indigent_traditional_op bigint,
              net_pat_rev_county_indigent_managed_op bigint,
              net_pat_rev_third_party_traditional_op bigint,
              net_pat_rev_third_party_managed_op bigint,
              net_pat_rev_other_indigent_op bigint,
              net_pat_rev_other_payer_op bigint,
              net_pat_rev_total_op bigint,
              payer_mix_medicare_traditional_ip decimal(14,12),
              payer_mix_medicare_traditional_ip_state decimal(6,4),
              payer_mix_medicare_managed_ip decimal(14,12),
              payer_mix_medicare_managed_ip_state decimal(6,4),
              payer_mix_medi_cal_traditional_ip decimal(14,12),
              payer_mix_medi_cal_traditional_ip_state decimal(6,4),
              payer_mix_medi_cal_managed_ip decimal(14,12),
              payer_mix_medi_cal_managed_ip_state decimal(6,4),
              payer_mix_county_indigent_traditional_ip decimal(14,12),
              payer_mix_county_indigent_traditional_ip_state decimal(6,4),
              payer_mix_county_indigent_managed_ip decimal(14,12),
              payer_mix_county_indigent_managed_ip_state decimal(6,4),
              payer_mix_third_party_traditional_ip decimal(14,12),
              payer_mix_third_party_traditional_ip_state decimal(6,4),
              payer_mix_third_party_managed_ip decimal(14,12),
              payer_mix_third_party_managed_ip_state decimal(6,4),
              payer_mix_other_indigent_ip decimal(14,12),
              payer_mix_other_indigent_ip_state decimal(6,4),
              payer_mix_other_payer_ip decimal(14,12),
              payer_mix_other_payer_ip_state decimal(6,4),
              payer_mix_medicare_traditional_op decimal(14,12),
              payer_mix_medicare_traditional_op_state decimal(6,4),
              payer_mix_medicare_managed_op decimal(14,12),
              payer_mix_medicare_managed_op_state decimal(6,4),
              payer_mix_medi_cal_traditional_op decimal(14,12),
              payer_mix_medi_cal_traditional_op_state decimal(6,4),
              payer_mix_medi_cal_managed_op decimal(14,12),
              payer_mix_medi_cal_managed_op_state decimal(6,4),
              payer_mix_county_indigent_traditional_op decimal(14,12),
              payer_mix_county_indigent_traditional_op_state decimal(6,4),
              payer_mix_county_indigent_managed_op decimal(14,12),
              payer_mix_county_indigent_managed_op_state decimal(6,4),
              payer_mix_third_party_traditional_op decimal(14,12),
              payer_mix_third_party_traditional_op_state decimal(6,4),
              payer_mix_third_party_managed_op decimal(14,12),
              payer_mix_third_party_managed_op_state decimal(6,4),
              payer_mix_other_indigent_op decimal(14,12),
              payer_mix_other_indigent_op_state decimal(6,4),
              payer_mix_other_payer_op decimal(14,12),
              payer_mix_other_payer_op_state decimal(6,4),
              avg_stay_medicare_traditional decimal(10,4),
              avg_stay_medicare_managed decimal(10,4),
              avg_stay_medi_cal_traditional decimal(10,4),
              avg_stay_medi_cal_managed decimal(10,4),
              avg_stay_county_indigent_traditional decimal(10,4),
              avg_stay_county_indigent_managed decimal(10,4),
              avg_stay_third_party_traditional decimal(10,4),
              avg_stay_third_party_managed decimal(10,4),
              avg_stay_other_indigent_total decimal(10,4),
              avg_stay_other_payer_total decimal(10,4),
              avg_stay_total decimal(10,4),
              active_projects int,
              active_project_costs bigint,
              active_projects_state int,
              active_project_costs_state bigint,
              spc_1 int,
              spc_2 int,
              spc_3 int,
              spc_4 int,
              spc_5 int,
              spc_1_state int,
              spc_2_state int,
              spc_3_state int,
              spc_4_state int,
              spc_5_state int,
              sysdate varchar(63))
           """
    db_exec(conn, sql)

    varchars = ['facility_desc', 'site_address1', 'site_address2', 'site_city', 'site_zip',
                'oshpd_id', 'license_type_desc', 'license_category_desc', 'license_number',
                'facility_level_desc', 'er_service_level_desc', 'licensed_beds', 'facility_status_desc',
                'consolidated_facility_desc_pipe', 'consolidated_facility_desc_comma',
                'period_begin_date', 'period_end_date', 'sysdate']

    cols = column_names('facility_profiles')

    num = 0
    
    with open('facility-profile-attributes.csv', newline='', encoding='latin1') as csvfile:
        rdr = csv.DictReader(csvfile)

        for row in rdr:

            values = list()
            for col in cols:
                if col in varchars:
                    values.append(fix(row[col]))
                else:
                    values.append(fix_int(row[col]))
            sql = f"insert into facility_profiles values ({','.join(values)})"
            # print(f"sql: {sql}")
            db_exec(conn, sql)
            num += 1

    print(f"added rows in csv # {num}")

