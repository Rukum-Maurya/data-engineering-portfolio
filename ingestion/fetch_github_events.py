import json
from pathlib import Path
import requests
import psycopg2

# Connect to PostgreSQL

conn = psycopg2.connect(
    dbname="github_pipeline",
    user="postgres",
    password="M@uryaRukum2215",
    host="localhost",
    port="5432"
)
cursor = conn.cursor()
print("PostgreSQL connection successfull")

# Fetch Github Events

response = requests.get("https://api.github.com/events")
events = response.json()
print("Total events fetched:", len(events))

# Insert events into PostgreSQL
for event in events:
    event_id = event["id"]
    event_type = event["type"]
    actor_login = event["actor"]["login"]
    repo_name = event["repo"]["name"]
    created_at = event["created_at"]

    cursor.execute(
        """
        INSERT INTO raw_github_events
        (event_id,event_type,actor_login,repo_name,created_at)
        VALUES (%s, %s, %s, %s, %s)
        ON CONFLICT (event_id) DO NOTHING
        """,
        (event_id,event_type,actor_login,repo_name,created_at)
    )
# Save Changes
conn.commit()
print("Github events Inserted Successfully")

# Close Database Connection
cursor.close()
conn.close()


   

