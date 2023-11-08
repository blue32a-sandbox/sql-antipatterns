-- ある人が報告した全てのバグを検索するクエリ
SELECT * FROM Accounts a
INNER JOIN (
  SELECT * FROM Bugs_2008
  UNION ALL
  SELECT * FROM Bugs_2009
  UNION ALL
  SELECT * FROM Bugs_2010
) t ON a.account_id = t.reported_by;
