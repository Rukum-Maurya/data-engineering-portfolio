# GitHub Events Batch ETL Pipeline

A simple Data Engineering ETL pipeline that collects GitHub public events using the GitHub API, stores raw event data in PostgreSQL, and transforms it into analytics tables using SQL.

## Overview

This project builds a batch data pipeline that:
- fetches GitHub public events from the GitHub API
- stores raw data in PostgreSQL
- transforms raw data into analytics tables using SQL

## Architecture

```mermaid
flowchart LR
    A[GitHub Public Events API] --> B[Python Ingestion Script: fetch_github_events.py]
    B --> C[(PostgreSQL Raw Table: raw_github_events)]
    C --> D[SQL Transformations]
    D --> E[event_type_summary]
    D --> F[repo_activity_summary]
```

## Pipeline Flow

```mermaid
flowchart TD
    A[GitHub API Request]
    B[Fetch Events using Python]
    C[Store Raw Data in PostgreSQL]
    D[Run SQL Transformations]
    E[Generate Analytics Tables]

    A --> B
    B --> C
    C --> D
    D --> E
```

## Technologies Used

- Python
- PostgreSQL
- SQL
- GitHub API
 analytics tables

