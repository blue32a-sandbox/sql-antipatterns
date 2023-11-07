-- タグを追加するクエリ
INSERT INTO Tags (bug_id, tag) VALUES (1234, 'save');

-- タグを削除するクエリ
DELETE FROM Tags WHERE bug_id = 1234 AND tag = 'crash';
