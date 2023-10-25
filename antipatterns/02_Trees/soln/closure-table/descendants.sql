-- 2.5.3 閉包テーブル（Closure Table）
-- コメントの子孫を取得する
SELECT c.*
  FROM Comments AS c
    INNER JOIN TreePaths AS t ON c.comment_id = t.descendant
WHERE t.ancestor = 4;
