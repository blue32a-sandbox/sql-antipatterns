-- 2.5.1 経路列挙（Path Enumeration）

-- ノードの挿入
INSERT INTO Comments (bug_id, author, comment_date, comment)
  VALUES (1234, 23, CURRENT_TIMESTAMP, 'ありがとう！');

UPDATE Comments
  SET path =
    (SELECT x.path FROM (
      SELECT path FROM Comments WHERE comment_id = 7
    ) AS x) || LAST_INSERT_ID() || '/'
WHERE comment_id = LAST_INSERT_ID();

-- MySQLの場合
INSERT INTO Comments (bug_id, author, comment_date, comment)
  VALUES (1234, 23, CURRENT_TIMESTAMP, 'ありがとう！');

UPDATE Comments
  SET path =
    CONCAT(
      (SELECT x.path FROM (
        SELECT path FROM Comments WHERE comment_id = 7
      ) AS x), LAST_INSERT_ID(), '/'
    )
WHERE comment_id = LAST_INSERT_ID();
