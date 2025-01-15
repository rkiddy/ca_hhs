
import argparse
import os
import subprocess as sp
import time
from time import time

from sqlalchemy import create_engine

import config

cfg = config.cfg()

metadb = create_engine(f"mysql+pymysql://{cfg['META_USR']}:{cfg['METAPWD']}@{cfg['META_HOST']}/"{cfg['META_DB']})
conn1 = metadb.connect()

maindb = create_engine(f"mysql+pymysql://{cfg['MAIN_USR']}:{cfg['MAIN_PWD']}@{cfg['MAIN_HOST']}/{cfg['MAIN_DB']}")
conn2 = maindb.connect()


def db_exec(eng, this_sql):
    # print(f"sql: {sql}")
    if this_sql.strip().startswith('select'):
        return [dict(row) for row in eng.execute(this_sql).fetchall()]
    else:
        # print(f"sql: {this_sql}")
        return eng.execute(this_sql)
        foo = intput()


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--write', action='store_true')
    return parser.parse_args()


if __name__ == '__main__':
    """Show where tables are in the ca_hhs database but so not exist in the sources table in ca_hhs_meta and
       vice-versa. This may happen because tables in the datasets change names. There are tables with names
       like something_interesting_2023. Well, on January 1, 2025, this became something_interesting_2024. If
       the file changes name, I will get an error from not finding the file. Then I need to remove the old
       name for the table and put in the new one.

       The list of table names is unique. The leaf file names are not. For example, there are lots of files
       named '.csv' and these go to different tables. The combination of the dataset identity and file_name is
       unique.

       Also record the current stucture of the ca_hhs tables in both the local and remote system and record
       the ca_hhs_meta database, with data.
       """

    args = arguments()

    os.chdir("/home/ray/Projects/ca_hhs")

    print("ca_hhs_local.sql...")
    cmd = ['/usr/bin/mysqldump', '--no-data', 'ca_hhs']
    t1 = sp.run(cmd, check=True, text=True, stdout=sp.PIPE)
    s1 = open('ca_hhs_local.sql', 'w')
    for line in t1.stdout.split('\n'):
        if not line.startswith('/'):
            s1.write(line)
            s1.write('\n')
    s1.close()

    print("ca_hhs_remote.sql...")
    cmd = ['ssh', 'opencal', '/usr/bin/mysqldump', '--no-data', 'ca_hhs']
    t1 = sp.run(cmd, check=True, text=True, stdout=sp.PIPE)
    s1 = open('ca_hhs_remote.sql', 'w')
    for line in t1.stdout.split('\n'):
        if not line.startswith('/'):
            s1.write(line)
            s1.write('\n')
    s1.close()

    print("ca_hhs_meta.sql...")
    cmd = ['ssh', 'opencal', '/usr/bin/mysqldump', '--skip-extended-insert', 'ca_hhs_meta']
    t1 = sp.run(cmd, check=True, text=True, stdout=sp.PIPE)
    s1 = open('ca_hhs_meta.sql', 'w')
    for line in t1.stdout.split('\n'):
        if not line.startswith('/'):
            s1.write(line)
            s1.write('\n')
    s1.close()

    tables = dict()

    for table in [r[0] for r in db_exec(maindb, "show tables")]:
        tables[table] = ['MAIN']

    for row in db_exec(metadb, "select table_name from sources"):
        table = row['table_name']
        if table not in tables:
            tables[table] = list()
        tables[table].append('META')

    names = sorted(list(tables.keys()))

    print("\nExtra Tables in Remote?\n")

    for name in names:
        #print(f"table: {name}, {tables[name]}")
        if tables[name] == ['MAIN']:
            db_exec(metadb, f"insert into sources values (NULL, 0, 0, NULL, '{name}')")
        if tables[name] == ['META']:
            print(f"table: {name}")

    print("\nExtra Tables in Local Data?\n")

    for row in db_exec(metadb, "select table_name from sources where ds_pk is NULL"):
        print(f"table: {row['table_name']}")
    print("")

