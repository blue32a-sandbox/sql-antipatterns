-- シンプルに、製品ごとのバグの最新の日付を返すだけで十分な場合もある
SELECT product_id, MAX(date_reported) AS latest
FROM Bugs INNER JOIN BugsProducts USING (bug_id)
GROUP BY product_id;
