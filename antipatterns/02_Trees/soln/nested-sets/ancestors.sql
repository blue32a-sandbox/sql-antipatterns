-- 2.5.2 入れ子集合（Nested Sets）
-- コメントの先祖を取得する
SELECT c2.*
FROM Comments AS c1
  INNER JOIN Comments as c2
    ON c1.nsleft BETWEEN c2.nsleft AND c2.nsright
WHERE c1.comment_id = 6;
