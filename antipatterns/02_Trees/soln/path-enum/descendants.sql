-- 2.5.1 経路列挙（Path Enumeration）

-- コメント４の子孫を取得する
SELECT *
FROM Comments AS c
WHERE c.path LIKE '1/4/' || '%';

-- MySQLの場合
SELECT *
FROM Comments AS c
WHERE c.path LIKE CONCAT('1/4/', '%');
