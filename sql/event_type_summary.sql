# -- Database: github_pipeline

# -- DROP DATABASE IF EXISTS github_pipeline;

# CREATE DATABASE github_pipeline
#     WITH
#     OWNER = postgres
#     ENCODING = 'UTF8'
#     LC_COLLATE = 'English_India.1252'
#     LC_CTYPE = 'English_India.1252'
#     LOCALE_PROVIDER = 'libc'
#     TABLESPACE = pg_default
#     CONNECTION LIMIT = -1
#     IS_TEMPLATE = False;

# -- Creating raw_github_events table to store data fetched from github

# CREATE TABLE raw_github_events (
# 	event_id TEXT PRIMARY KEY,
# 	event_type TEXT,
# 	actor_login TEXT,
# 	repo_name TEXT,
# 	created_at TIMESTAMP
# );

# SELECT *
# FROM raw_github_events;


-- Creating summary table for events

CREATE TABLE event_type_summary AS 
SELECT 
	event_type,
	COUNT(*) AS total_events
FROM raw_github_events
GROUP BY event_type
ORDER BY total_events DESC;

SELECT * FROM event_type_summary;

