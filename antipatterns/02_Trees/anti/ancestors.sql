-- 2.2.1 隣接リストへのクエリ実行

-- ４階層までのコメントを取得するクエリ
SELECT c1.*, c2.*, c3.*, c4.*
FROM Comments c1 -- １階層目
  LEFT OUTER JOIN Comments c2
    ON c2.parent_id = c1.comment_id -- ２階層目
  LEFT OUTER JOIN Comments c3
    ON c3.parent_id = c2.comment_id -- ３階層目
  LEFT OUTER JOIN Comments c4
    ON c4.parent_id = c3.comment_id; -- ４階層目
