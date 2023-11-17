EXPLAIN SELECT Bugs.*
FROM Bugs
INNER JOIN (BugsProducts INNER JOIN Products USING (product_id))
  USING (bug_id)
WHERE summary LIKE '%crash%'
  AND product_name = 'Open RoundFile'
ORDER BY date_reported DESC;
