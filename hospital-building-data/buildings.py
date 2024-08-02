
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


if __name__ == '__main__':

    db_exec(conn, "drop table if exists hospital_buildings")

    sql = """
          create table hospital_buildings (
                 county_code varchar(31),
                 perm_id varchar(11),
                 facility_name varchar(127),
                 city varchar(31),
                 building_nbr varchar(63),
                 building_name varchar(127),
                 building_status varchar(31),
                 spc_rating varchar(3),
                 building_url varchar(255),
                 height_ft int,
                 stories int,
                 building_code varchar(63),
                 building_code_year int,
                 year_completed int,
                 ab_1882_notice varchar(255),
                 latitude decimal(12,8),
                 longitude decimal(12,8),
                 count int)
           """
    db_exec(conn, sql)

    num = 0
    with open('hospital-building-data-.csv', newline='', encoding='latin1') as csvfile:
        rdr = csv.DictReader(csvfile)

        # {'County Code': '01 - Alameda', 'Perm ID': '11210', 'Facility Name': 'Alameda Hospital',
        #  'City': 'Alameda', 'Building Nbr': 'BLD-01278', 'Building Name': 'Original Hospital',
        #  'Building Status': 'No Gen Acute Care - OSHPD Bldg', 'SPC Rating *': 'N/A',
        #  'Building URL': 'https://esp.oshpd.ca.gov/CitizenAccess/Cap/CapDetail.aspx?...',
        #  'Height (ft)': '44.17', 'Stories': '4', 'Building Code': 'Unknown', 'Building Code Year': '',
        # 'Year Completed': '1926', 'AB 1882 Notice': '',
        # 'Latitude': '37.7626572', 'Longitude': '-122.2538986', 'Count': '1'}
        #
        for row in rdr:
            row['Facility Name'] = row['Facility Name'].replace("'", "''")
            row['Building Name'] = row['Building Name'].replace("'", "''")

            sql = f"""
                  insert into hospital_buildings values ({fix(row['County Code'])}, {fix(row['Perm ID'])},
                      {fix(row['Facility Name'])}, {fix(row['City'])}, {fix(row['Building Nbr'])},
                      {fix(row['Building Name'])}, {fix(row['Building Status'])}, {fix(row['SPC Rating *'])},
                      {fix(row['Building URL'])}, {fix_int(row['Height (ft)'])}, {fix_int(row['Stories'])},
                      {fix(row['Building Code'])}, {fix_int(row['Building Code Year'])},
                      {fix_int(row['Year Completed'])}, {fix(row['AB 1882 Notice'])}, {row['Latitude']},
                      {row['Longitude']}, {fix_int(row['Count'])})
                  """

            db_exec(conn, sql)
            num += 1

    print(f"added rows in csv # {num}")

