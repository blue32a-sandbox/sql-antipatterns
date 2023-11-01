-- EAV設計では、単一行で取得するのではなく、そのままの形で取得する
SELECT issue_id, attr_name, attr_value
FROM IssuesAttributes
WHERE issue_id = 1234;
