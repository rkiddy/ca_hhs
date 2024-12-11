import copy
import sys

sys.path.append('..')

from excels import Excels

import sql_helper as sqls

def any_is_nonetype(d):
    """Check a dictionary to see if any of the values are equal to None."""
    for key in d:
        if d[key] is None:
            return True
    return False
 

def create_table(e, table, types={}):

    #print(f"\ntypes: {types}")

    col_names = [n.lower() for n in e.column_tops()]
    #print(f"\ncol_names: {col_names}")

    cells = dict()
    for key in col_names:
        for kind in types:
            if key in types['long']:
                cells[key] = 'varchar(255)'
            elif key in types['id9']:
                cells[key] = 'char(9)'
            elif key in types['id10']:
                cells[key] = 'varchar(10)'
            elif key in types['int']:
                cells[key] = 'int'
            elif key in types['float']:
                cells[key] = 'decimal(20,20)'
            elif key in types['date']:
                cells[key] = 'datetime'
            else:
                cells[key] = 'varchar(31)'

    #print(f"\ncells: {cells}")

    cols_sql = ', '.join([f"{k} {cells[k]}" for k in cells])
    sql = f"create table {table} ({cols_sql})"

    print(f"sql: {sql}")
    sqls.db_exec_sql(sql)

    return cells


def fix(col_name, value, known_types):

    known = None

    for key in known_types:
        if col_name in known_types[key]:
            known = key

    #print(f"\ncol_name: {col_name}, value: {value}, known: {known}")

    if known is None or known in ['long', 'id9', 'id10']:
        return sqls.fix(value)

    if known in ['float', 'int']:
        return sqls.fix_int(str(value))

    if known == 'date':
        return sqls.fix_date(str(value))

    if known == 'yesno':
        if value == 'Yes':
            return 1
        else:
            return 0

    raise Exception(f"Somehow, fix found an unknown type: {known}")


if __name__ == '__main__':

    tables = {'specialty_care_clinic_2012': '2012-specialty-care-clinic-complete-data-set.xlsx'}
    _ables = {'specialty_care_clinic_2013': '2013-specialty-care-clinic-complete-data-set.xlsx',
              'specialty_care_clinic_2014': '2014-specialty-care-clinic-complete-data-set.xlsx',
              'specialty_care_clinic_2015': '2015-specialty-care-clinic-complete-data-set.xlsx',
              'specialty_care_clinic_2016': '2016-specialty-care-clinic-complete-data-set-november-2019-extract.xlsx',
              'specialty_care_clinic_2017': '2017-specialty-care-clinic-utilization-data-october-2018.xlsx',
              'specialty_care_clinic_2018': '2018-specialty-care-clinic-utilization-data-november-2019.xlsx',
              'specialty_care_clinic_2019': '2019-specialty-care-clinic-utilization-data-november-2020.xlsx',
              'specialty_care_clinic_2020': '2020-specialty-care-clinic-utilization-data-october-2021.xlsx',
              'specialty_care_clinic_2021': '2021-specialty-care-clinic-utilization-data-october-2022.xlsx',
              'specialty_care_clinic_2022': '2022-specialty-care-clinic-utilization-data-october-2023.xlsx',
              'specialty_care_clinic_2023': '2023-specialty-care-clinic-utilization-data-november-2024.xlsx'}

    data_top_right = {'specialty_care_clinic_2012': 'A5',
                      'specialty_care_clinic_2013': 'A5',
                      'specialty_care_clinic_2014': 'A5',
                      'specialty_care_clinic_2015': 'A5',
                      'specialty_care_clinic_2016': 'A5',
                      'specialty_care_clinic_2017': 'A5',
                      'specialty_care_clinic_2018': 'A5',
                      'specialty_care_clinic_2019': 'B6',
                      'specialty_care_clinic_2020': 'B6',
                      'specialty_care_clinic_2021': 'B6',
                      'specialty_care_clinic_2022': 'B6',
                      'specialty_care_clinic_2023': 'B6'}

    tops = dict()

    for table in tables:

        file = tables[table]
        sheet_nums = [1,2]

        # used for fixing column types below.
        #
        types = {'long': ['fac_address_one', 'fac_address_two', 'parent_name',
                          'parent_address_one', 'parent_address_two'],
                 'id9': ['oshpd_id', 'license_no'],
                 'id10': ['cens_tract'],
                 'int': ['assembly_dist', 'senate_dist', 'congress_dist', 'patients_undupl', 'encounters_totl', 'op_rm_cy', 'surg_totl', 'encounters_psy_gen_med', 'encounters_psy_subst_abuse', 'encounters_psy_mental_hlth_couns', 'encounters_psy_all_othr encounters_psy_totl', 'no_dialysis_stations', 'app_in_home_training_capd_ccpd', 'gro_rev_totl', 'write_off_charity_totl', 'write_off_contr_adjust_totl', 'write_off_bad_debts_totl', 'write_off_othr_adjust_totl', 'write_off_adjusts', 'net_patient_rev_totl', 'rev_othr_oper_grants_publ_totl', 'rev_othr_oper_grants_pvt_totl', 'rev_othr_oper_donations_totl', 'rev_other_oper_othr_totl', 'rev_other_oper_totl', 'rev_oper_totl', 'exp_oper_sal_wages', 'exp_oper_contr_prof', 'exp_oper_sup', 'exp_oper_rent_deprc', 'exp_oper_util', 'exp_oper_liab_prof_ins', 'exp_oper_othr_ins', 'exp_oper_all_othr', 'exp_oper_totl', 'net_frm_oper', 'equip_01_value', 'equip_02_value', 'equip_03_value', 'equip_04_value', 'equip_05_value', 'equip_06_value', 'equip_07_value', 'equip_08_value', 'equip_09_value', 'equip_10_value', 'proj_01_projtd_cap_exp', 'proj_02_projtd_cap_exp', 'proj_03_projtd_cap_exp', 'proj_04_projtd_cap_exp', 'proj_05_projtd_cap_exp'],
                 'float': ['longitude','latitude'],
                 'date': ['beg_date', 'end_date', 'lic_status_date', 'lic_orig_date', 'equip_01_acqui_dt', 'equip_02_acqui_dt', 'equip_03_acqui_dt', 'equip_04_acqui_dt', 'equip_05_acqui_dt', 'equip_06_acqui_dt', 'equip_07_acqui_dt', 'equip_08_acqui_dt', 'equip_09_acqui_dt', 'equip_10_acqui_dt'],
                 'yesno': ['fac_oper_curryr', 'equip_acq_over_500k', 'cap_exp_over_1mil']}

        unknown = {'fac_no': 'varchar(255)',
                 'fac_name': 'varchar(255)',
                 'fac_str_addr': 'varchar(255)',
                 'fac_par_corp_name': 'varchar(255)',
                 'fac_par_corp_bus_addr': 'varchar(255)',
                 'congress_dist': 'varchar(255)',
                 'deproj_01': 'varchar(255)',
                 'fac_op_per_end_dt': 'varchar(255)',
                 'lic_cat': 'varchar(255)',
                 'type_cntrl': 'varchar(255)',
                 'parent_name': 'varchar(255)',
                 'fac_admin_name': 'varchar(255)',
                 'fac_address_one': 'varchar(255)',
                 'parent_address_one': 'varchar(255)',
                 'parent_address_two': 'varchar(255)',
                 'proj_over_1m': 'varchar(255)',
                 'senate_dist': 'varchar(255)',
                 'fac_acquire_equipment_over_500k': 'varchar(255)',
                 'licee_toc': 'varchar(255)',
                 'proj_01_descrip_cap_exp': 'varchar(255)'}

        e = Excels()

        e.load(file)

        sheets = e.sheet_names()
        print(f"\nsheets: {sheets}")

        col_names = []

        count = 0

        for sheet_num in sheet_nums:
            e.setActive(sheet_num)

            if sheet_num == sheet_nums[0]:

                sheet_cols = e.column_tops()
                tops[table] = sheet_cols

                print(f"\nsheet_cols # {len(sheet_cols)}")

                sqls.db_exec_sql(f"drop table if exists {table}")

                col_defs = create_table(e, table, types)
                col_names = [r.split(' ')[0] for r in col_defs]
                print(f"\nfound col_names: {col_names}")

                sqls.db_exec_sql(f"alter table {table} add column non_response char(1)")

            label = data_top_right[table]

            done = False
            left_side_cell = e.cell(label)

            while not done:

                print(f"start of row: {left_side_cell}")

                values = list()
                cell = copy.deepcopy(left_side_cell)

                for idx in range(len(col_names)):
                    value = fix(col_names[idx], cell.value, types)
                    values.append(value)
                    cell = cell.offset(0,1)
                #print(f"values: {values}")

                nones = [v for v in values if v == 'NULL']
                #print(f"nones: {nones}")

                try:
                    if len(nones) == len(sheet_cols):
                        done = True
                    else:
                        if sheet_num > sheet_nums[0]:
                            values.append('1')
                        else:
                            values.append('0')

                        sql = f"insert into {table} values ({', '.join(values)})"
                        sqls.db_exec_sql(sql)
                        count += 1
                        left_side_cell = left_side_cell.offset(1,0)
                except Exception as e:
                    print(f"bad dict: {dict(zip(sheet_cols, values))}")
                    raise Exception(e)

        print(f"count: {count}")

        e.unload()

    print(f"tops: {tops}")

    print("")

    last = None

    for key in tops:
        if last != None:
            print(f"No difference for {last} and {key} ? {tops[last] == tops[key]}")
        last = key

    print("")

