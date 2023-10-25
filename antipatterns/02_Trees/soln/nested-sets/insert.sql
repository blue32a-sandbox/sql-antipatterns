-- 2.5.2 入れ子集合（Nested Sets）
-- ノードの挿入

-- コメント５の新しい子を作成するため、NS値 8,9 のスペースを空ける
UPDATE Comments
  SET nsleft = CASE WHEN nsleft > 7 THEN nsleft+2 ELSE nsleft END,
      nsright = nsright+2
WHERE nsright >= 7;

-- コメント５の新しい子として、NS値 8,9 を割り当てる
INSERT INTO Comments (nsleft, nsright, bug_id, author, comment_date, comment)
  VALUES (8, 9, 1234, 12, CURRENT_TIMESTAMP, '私もそう思います！');
