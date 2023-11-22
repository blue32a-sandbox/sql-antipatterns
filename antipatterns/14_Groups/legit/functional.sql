-- 厳密には単一値の原則に違反しているが、入る可能性のある値は１つのみ
SELECT b.reported_by, a.acount_name
FROM Bugs b INNER JOIN Accounts a ON b.reported_by = a.account_id
GROUP BY b.reported_by;
