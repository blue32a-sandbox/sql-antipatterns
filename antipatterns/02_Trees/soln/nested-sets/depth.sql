-- 2.5.2 入れ子集合（Nested Sets）
-- コメントのノードの深さを取得する
SELECT c1.comment_id, COUNT(c2.comment_id) AS depth
FROM Comments AS c1
  INNER JOIN Comments AS c2
    ON c1.nsleft BETWEEN c2.nsleft AND c2.nsright
WHERE c1.comment_id = 7
GROUP BY c1.comment_id;

-- 上位のコメントを削除する
DELETE FROM Comments WHERE comment_id = 6;

-- 再びノードの深さを取得すると、深さが１つ減少している
