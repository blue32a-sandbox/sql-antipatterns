-- グループごとにすべての値を連結する
-- 最新日付に対応するbug_idは特定できない
-- SQL標準に準拠していない
SELECT product_id, MAX(date_reported) AS latest,
  GROUP_CONCAT(bug_id) AS bug_id_list
FROM Bugs INNER JOIN BugsProducts USING (bug_id)
GROUP BY product_id;
