
from typing import List, Optional

from sqlalchemy import ForeignKey, String
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, relationship


class Base(DeclarativeBase):
    pass

class CatalogAgency(Base):
    __tablename__ = "catalog_agency2"

    pk: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(127))

    def __repr__(self) -> str:
        return f"CatalogAgency(id={self.pk!r}, name={self.name!r})"

