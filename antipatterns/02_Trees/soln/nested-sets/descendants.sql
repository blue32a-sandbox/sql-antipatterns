-- 2.5.2 入れ子集合（Nested Sets）
-- コメントの子孫を取得する
SELECT c2.*
FROM Comments AS c1
  INNER JOIN Comments as c2
    ON c2.nsleft BETWEEN c1.nsleft AND c1.nsright
WHERE c1.comment_id = 4;
