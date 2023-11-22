-- 異なる集約関数MAXとMINを使用した場合、どちらのbug_idを返せばよいのだろうか？
SELECT product_id, MAX(date_reported) AS latest,
  MIN(date_reported) AS earliest, bug_id
FROM Bugs INNER JOIN BugsProducts USING (bug_id)
GROUP BY product_id;
