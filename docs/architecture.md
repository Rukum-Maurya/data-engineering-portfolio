# GitHub Events ETL Pipeline Architecture

Source
GitHub Public Events API

Ingestion
Python script fetch_github_events.py fetches events

Storage
PostgreSQL table raw_github_events

Transformations
SQL queries generate analytics tables

Outputs
event_type_summary
repo_activity_summary