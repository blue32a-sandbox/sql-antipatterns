-- 2.5.3 閉包テーブル（Closure Table）
-- ThreePaths.path_length属性を追加した場合の、コメントの子孫の取得
SELECT *
FROM TreePaths
WHERE ancestor = 4 AND path_length = 1;
