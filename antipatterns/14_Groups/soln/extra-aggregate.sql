-- 他の列にも集約関数を適用することによって、単一値の原則に従わせる
-- 最大のbug_idが最新日付を持つことを保証できる場合にのみ使用できる
SELECT product_id, MAX(date_reported) AS latest,
  MAX(bug_id) AS latest_bug_id
FROM Bugs INNER JOIN BugsProducts USING (bug_id)
GROUP BY product_id;
