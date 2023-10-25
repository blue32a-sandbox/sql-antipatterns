-- 2.5.3 閉包テーブル（Closure Table）
-- コメントの祖先を取得する
SELECT c.*
  FROM Comments AS c
    INNER JOIN TreePaths AS t ON c.comment_id = t.ancestor
WHERE t.descendant = 6;
