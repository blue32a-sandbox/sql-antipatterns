-- 2.2.2 隣接リストのツリーのメンテナンス

-- 葉ノードの追加
INSERT INTO Comments (bug_id, parent_id, author, comment_date, comment)
VALUES (1234, 7, 23, CURRENT_TIMESTAMP, 'ありがとう！');
