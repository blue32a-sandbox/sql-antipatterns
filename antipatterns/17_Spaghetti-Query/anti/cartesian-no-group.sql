-- 中間的な結果セット
SELECT p.product_id, f.bug_id AS fixed, o.bug_id AS open
FROM BugsProducts p
INNER JOIN Bugs f ON p.bug_id = f.bug_id AND f.status = 'FIXED'
INNER JOIN BugsProducts p2 USING (product_id)
INNER JOIN Bugs o ON p2.bug_id = o.bug_id AND o.status = 'OPEN'
WHERE p.product_id = 1;
