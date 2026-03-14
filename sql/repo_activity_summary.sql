CREATE TABLE repo_activity_summary AS
SELECT 
	repo_name,
	COUNT(*) AS total_events
FROM raw_github_events
GROUP BY repo_name
ORDER BY total_events DESC;