-- 製品ごとの最新のバグ報告日付を取得するクエリ
SELECT product_id, MAX(date_reported) AS latest
FROM Bugs INNER JOIN BugsProducts USING (bug_id)
GROUP BY product_id;

-- クエリを拡張して、製品ごとに最新の報告日付を持つバグのIDを取得したい
-- しかし、このクエリはエラーになるか、または信頼性の低い結果を返す
SELECT product_id, MAX(date_reported) AS latest, bug_id
FROM Bugs INNER JOIN BugsProducts USING (bug_id)
GROUP BY product_id;
