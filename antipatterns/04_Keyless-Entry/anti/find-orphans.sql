-- 無効な値を持つバグレポートを特定するクエリ
SELECT b.bug_id, b.status
FROM Bugs b LEFT OUTER JOIN BugStatus s
  ON b.status = s.status
WHERE s.status IS NULL;
