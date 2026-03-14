# Github Events Batch ETL Pipeline

## Overview
This project builds a simple batch data pipeline that collects Github public events using the Github API and stores them in PostgreSQL. The raw data is then transformed into analytics tables using SQL.

## Architecture

Github API 
↓
Python Ingestion Script
↓
PostgreSQL Raw Table
↓
SQL Transformations
↓
Analytics Tables

## Technologies Used

Python
PostgreSQL
SQL
Github API

## Tables

###  raw_github_events
Stores raw event data from Github.

Columns:
event_id
event_type
actor_login
repo_name
created_at

### event_type_summary
Aggregated event counts by event type.

### repo_activity_summary
Aggregated event counts by repository.

## Pipeline Steps

1.Fetch Github events from API
2.Parse event JSON
3.Insert events into PostgreSQL
4.Transform raw data into analytics tables

