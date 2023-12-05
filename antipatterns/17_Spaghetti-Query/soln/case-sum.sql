-- CASE式とSUM関数を組み合わせる
SELECT p.product_id,
  SUM(CASE b.status WHEN 'FIXED' THEN 1 ELSE 0 END) AS count_fixed,
  SUM(CASE b.status WHEN 'OPEN' THEN 1 ELSE 0 END) AS count_open
FROM BugsProducts p
INNER JOIN Bugs b USING (bug_id)
WHERE p.product_id = 1
GROUP BY p.product_id;
