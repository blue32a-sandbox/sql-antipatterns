-- 2.5.3 閉包テーブル（Closure Table）
-- サブツリーを移動する
DELETE FROM TreePaths
WHERE descendant IN (SELECT x.id FROM (SELECT descendant AS id
                     FROM TreePaths
                     WHERE ancestor = 6) AS x)
  AND ancestor IN (SELECT y.id FROM (SELECT ancestor AS id
                   FROM TreePaths
                   WHERE descendant = 6
                     AND ancestor != descendant) AS y);

INSERT INTO TreePaths (ancestor, descendant)
  SELECT supertree.ancestor, subtree.descendant
  FROM TreePaths AS supertree
    CROSS JOIN TreePaths AS subtree
  WHERE supertree.descendant = 3
    AND subtree.ancestor = 6;
