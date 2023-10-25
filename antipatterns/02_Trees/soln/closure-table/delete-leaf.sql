-- 2.5.3 閉包テーブル（Closure Table）
-- 葉ノードを削除する
DELETE FROM TreePaths WHERE descendant = 7;

-- TreePathsで行を削除してもコメントそのものは削除されない
