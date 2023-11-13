-- バグ修正にかかったコストを算出するクエリ
SELECT b.bug_id, b.hours * a.hourly_rate AS cost_per_bug
FROM Bugs AS b
  INNER JOIN Accounts AS a ON b.assigned_to = a.account_id;
