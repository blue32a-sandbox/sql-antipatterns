-- 2.5.3 閉包テーブル（Closure Table）
-- サブツリー全体を削除する
DELETE FROM TreePaths
WHERE descendant IN (SELECT x.id FROM
                       (SELECT descendant AS id
                        FROM TreePaths
                        WHERE ancestor = 4) AS x);

-- TreePathsで行を削除してもコメントそのものは削除されない
