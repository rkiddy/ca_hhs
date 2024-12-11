
from sqlalchemy import create_engine
from sqlalchemy.orm import Session

engine = create_engine("mysql+pymysql://ray:alexna11@localhost/ca_hhs", echo=True)

from CatalogAgency import CatalogAgency
from CatalogAgency import Base

if __name__ == '__main__':

    with Session(engine) as session:
        Base.metadata.create_all(engine)

        a1 = CatalogAgency(name='Wonderful Group')
        a2 = CatalogAgency(name='Not So Great Ones')
        session.add_all([a1, a2])
        session.commit()

