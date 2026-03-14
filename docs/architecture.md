# GitHub Events Batch ETL Pipeline Architecture

Source
GitHub Public Events API

Ingestion Layer
Python script fetch_github_events.py fetches events from the API.

Storage Layer
PostgreSQL table raw_github_events stores raw event data.

Transformation Layer
SQL queries generate analytics tables.

Analytics Tables
event_type_summary
repo_activity_summary

Pipeline Flow

GitHub API
      ↓
Python Ingestion Script
      ↓
raw_github_events (PostgreSQL)
      ↓
SQL Transformations
      ↓
Analytics Tables