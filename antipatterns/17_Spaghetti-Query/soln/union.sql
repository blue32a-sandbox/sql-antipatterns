-- UNIONを用いて１つの結果セットにまとめる
(SELECT p.product_id, 'FIXED' AS status, COUNT(f.bug_id) AS bug_count
 FROM BugsProducts p
 LEFT OUTER JOIN Bugs f ON p.bug_id = f.bug_id AND f.status = 'FIXED'
 WHERE p.product_id = 1
 GROUP BY p.product_id)

UNION ALL

(SELECT p.product_id, 'OPEN' AS status, COUNT(o.bug_id) AS bug_count
 FROM BugsProducts p
 LEFT OUTER JOIN Bugs o ON p.bug_id = o.bug_id AND o.status = 'OPEN'
 WHERE p.product_id = 1
 GROUP BY p.product_id)

ORDER BY bug_count DESC;
