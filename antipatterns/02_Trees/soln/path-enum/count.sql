-- 2.5.1 経路列挙（Path Enumeration）

-- コメント４を頂点とするサブツリーで、コメント数を計算する
SELECT c.author, COUNT(*)
FROM Comments AS c
WHERE c.path LIKE '1/4/' || '%'
GROUP BY c.author;

-- MySQLの場合
SELECT c.author, COUNT(*)
FROM Comments AS c
WHERE c.path LIKE CONCAT('1/4/', '%')
GROUP BY c.author;
