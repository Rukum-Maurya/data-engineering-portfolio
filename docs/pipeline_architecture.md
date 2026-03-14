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
