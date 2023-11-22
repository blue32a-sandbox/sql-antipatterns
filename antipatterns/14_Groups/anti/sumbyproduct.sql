-- 集約関数で返された値と一致する行がテーブルにない場合、bug_idの値はどうすればよいだろうか？
SELECT product_id, SUM(hours) AS total_project_estimate, bug_id
FROM Bugs INNER JOIN BugsProducts USING (bug_id)
GROUP BY product_id;
