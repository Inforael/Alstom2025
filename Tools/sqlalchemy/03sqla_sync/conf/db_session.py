import sqlite3
from requests import session
import sqlalchemy as sa 
from sqlalchemy.orm import sessionmaker
from pathlib import Path
from typing import Optional
from sqlalchemy.orm import Session
from sqlalchemy.future.engine import Engine
from models.model_base import ModelBase


__engine: Optional[Engine] = None

def create_engine(sqlite: bool = False):
    global __engine

    if __engine:
        return
    if sqlite:


        arquivo_db = 'db/BNDES.db'
        # arquivo_db = 'BNDES.db'
        
        folder = Path(arquivo_db).parent
        folder .mkdir(parents=True, exist_ok=True)

        conn_str = f'sqlite:///{arquivo_db}'
        __engine = sa.create_engine(url=conn_str, echo=False, connect_args={"check_same_thread": False})
    return __engine



def create_session() -> Session:
        
        global __engine

        if not __engine:
             create_engine()

        __session = sessionmaker(__engine, expire_on_commit=False, Class = Session)

        session: sessionmaker = __session()

        return session

def create_tables():
     
     global __engine

     if not __engine:
          create_engine(sqlite=True)

    #  import models.__all_models
    #  ModelBase.metadata.drop_all(__engine)
     ModelBase.metadata.create_all(__engine)
     




