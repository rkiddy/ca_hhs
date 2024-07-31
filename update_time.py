
import time

from sqlalchemy import create_engine

from time import time
import config

import os

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

if __name__ == '__main__':

    
    id = os.getcwd().split('/')[-1]
    sql = f"insert into updates values ('{id}', {int(time())})"
    db_exec(conn, sql)

