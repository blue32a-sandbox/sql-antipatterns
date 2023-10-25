-- 2.5.1 経路列挙（Path Enumeration）

-- コメント７の祖先を取得する
SELECT *
FROM Comments AS c
WHERE '1/4/6/7/' LIKE c.path || '%';

-- MySQLの場合
SELECT *
FROM Comments AS c
WHERE '1/4/6/7/' LIKE CONCAT(c.path, '%');
