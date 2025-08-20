import pandas as pd
import pyodbc
from sqlalchemy import create_engine

# SQL Server Native Client 11.0'

server= 'AAD-BRJ218XTJ9'
database='TSQL2012'
# username='sa'
# password=123456
# agora = ('DRIVER={ODBC Driver 17 for SQL Server};'

agora = ('DRIVER={SQL Server};'
            f'SERVER={server};'
            f'DATABASE={database};'
            # f'UID={username};'
            # f'PWD={password};'
            'Trusted_Connection=yes;'
        )

engine = create_engine(f'mssql+pyodbc:///?odbc_connect={agora}')

query = '''
SELECT TOP (1000) [empid],[lastname],[firstname] FROM [TSQL2012].[HR].[Employees]
'''

df = pd.read_sql_query(query, engine)
engine.dispose()
print(df)