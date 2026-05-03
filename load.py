import pandas as pd
from sqlalchemy import create_engine
from urllib.parse import quote_plus

# Load CSV
games_sql = pd.read_csv("games_engagement.csv")  # Make sure this CSV is in the same folder as load.py

# MySQL connection
username = "root"
password = quote_plus("Prajna@64")  # encode special characters
host = "localhost"
port = "3306"
database = "video_game_analysis"

engine = create_engine(
    f"mysql+pymysql://{username}:{password}@{host}:{port}/{database}"
)

# Load to SQL
games_sql.to_sql(
    'games_engagement',  # SQL table name
    con=engine,
    if_exists='replace',  # 'replace' will overwrite existing table
    index=False
)

# Load game_sales
game_sales_sql = pd.read_csv("game_sales.csv")
game_sales_sql.to_sql(
    'game_sales',
    con=engine,
    if_exists='replace',  # use 'replace' if you want to overwrite
    index=False
)

# Load merged_game_data
merged_game_data_sql = pd.read_csv("merged_game_data.csv")
merged_game_data_sql.to_sql(
    'merged_game_data',
    con=engine,
    if_exists='replace',
    index=False
)

print("All tables loaded successfully!")
