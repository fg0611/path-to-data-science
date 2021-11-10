import mysql.connector as sql
import pandas as pd

db = sql.connect(
    host='localhost',
    user='root',
    passwd='Qaz123321.',
    database='people'
)

# Create Data as Pandas dataframe
query = "select * from citizen"
data = pd.read_sql(query, db)

print(data.head())


