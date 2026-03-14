# GitHub Events Batch ETL Pipeline Architecture

flowchart LR

A[GitHub Public Events API]

B[Python Ingestion Script
fetch_github_events.py]

C[(PostgreSQL Table
raw_github_events)]

D[SQL Transformations]

E[event_type_summary]

F[repo_activity_summary]

A --> B
B --> C
C --> D
D --> E
D --> F
