GitHub API
            │
            ▼
   Python Ingestion Script
   (fetch_github_events.py)
            │
            ▼
   PostgreSQL Database
      raw_github_events
            │
            ▼
   SQL Transformations
   ├── event_type_summary
   └── repo_activity_summary
            │
            ▼
      Analytics Layer