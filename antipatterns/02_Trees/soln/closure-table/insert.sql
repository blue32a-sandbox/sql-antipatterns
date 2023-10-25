-- 2.5.3 閉包テーブル（Closure Table）
-- ノードの挿入
INSERT INTO Comments (comment_id, bug_id, author, comment_date, comment)
  VALUES (8, 1234, 23, CURRENT_TIMESTAMP, '確認おねがいします');

-- 新しいノードの参照を挿入する
INSERT INTO TreePaths (ancestor, descendant)
    -- 親のノードを子孫として参照する行の集合を取得し、子孫を新しいコメントに置き換える
    SELECT t.ancestor, 8
    FROM TreePaths AS t
    WHERE t.descendant = 5
  UNION ALL
    -- 新しいノードの自己参照
    SELECT 8, 8;
