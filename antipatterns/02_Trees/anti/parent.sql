-- 2.2.1 隣接リストへのクエリ実行

-- コメントと直近の子を取得するクエリ
SELECT c1.*, c2.*
FROM Comments c1 LEFT OUTER JOIN Comments c2
  ON c2.parent_id = c1.comment_id;
