# Project Overview

## Project Name
GitHub Events Batch ETL Pipeline

## Goal
Build a batch data pipeline that fetches live GitHub public events, stores them in PostgreSQL, and transforms the raw data into analytics tables.

## Business Questions Answered
- Which event types occur most frequently?
- Which repositories are most active?

## Source
GitHub Public Events API

## Ingestion
Python script fetch_github_events.py

## Raw Storage
PostgreSQL table raw_github_events

## Transformations
- event_type_summary
- repo_activity_summary

## Skills Demonstrated
- API ingestion
- Python database connectivity
- PostgreSQL table design
- SQL aggregations
- ETL pipeline structure
- Git and GitHub workflow
- Project documentation