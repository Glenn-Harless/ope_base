import psycopg2
from sqlalchemy import create_engine
import pandas as pd

class PostgresDatabase:
    """
    Simple class to interact with Postgres database
    """
    def __init__(self, host, port, database, user, password):
        self.host = host
        self.port = port
        self.database = database
        self.user = user
        self.password = password
        self.engine = self._create_engine()

    def _create_engine(self):
        return create_engine(f'postgresql://{self.user}:{self.password}@{self.host}:{self.port}/{self.database}')

    def fetch_data(self, query):
        with self.engine.connect() as conn:
            return pd.read_sql(query, conn)

    def execute_query(self, query):
        with self.engine.connect() as conn:
            conn.execute(query)

    def insert_data(self, df, table_name, if_exists='append'):
        df.to_sql(table_name, con=self.engine, index=False, if_exists=if_exists)
