-- 属性名に揺れがある場合、それを補わなければならない
SELECT date_reported, COUNT(*) AS bugs_per_date
FROM (SELECT DISTINCT issue_id, attr_value AS date_reported
  FROM IssueAttributes
  WHERE attr_name IN ('date_reported', 'report_date'))
GROUP BY date_reported;

-- MySQL
SELECT i.date_reported, COUNT(*) AS bugs_per_date
FROM (SELECT DISTINCT issue_id, attr_value AS date_reported
  FROM IssueAttributes
  WHERE attr_name IN ('date_reported', 'report_date')) AS i
GROUP BY i.date_reported;
