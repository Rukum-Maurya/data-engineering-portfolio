'''
mermaid
flowchart TD
    A[GitHub API]
    B[Python Ingestion Script<br>fetch_github_events.py]
    C[PostgreSQL Database<br>raw_github_events]
    D[SQL Transformations]
    E[event_type_summary]
    F[repo_activity_summary]
    G[Analytics Layer]

    A --> B
    B --> C
    C --> D
    D --> E
    D --> F
    E --> G
    F --> G
'''
