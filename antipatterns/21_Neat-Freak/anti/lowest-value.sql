-- 最も小さな欠番を特定するクエリ
SELECT b1.bug_id + 1 AS max_bug_id
FROM Bugs b1
LEFT OUTER JOIN Bugs AS b2 ON b1.bug_id + 1 = b2.bug_id
WHERE b2.bug_id IS NULL
ORDER BY b1.bug_id LIMIT 1;
