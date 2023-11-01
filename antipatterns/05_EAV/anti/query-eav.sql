-- EAV設計では、クエリは冗長になり、明確さも低下する
SELECT issue_id, attr_value AS date_reported
FROM IssueAttributes
WHERE attr_name = 'date_reported';
