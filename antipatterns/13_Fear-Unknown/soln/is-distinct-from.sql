-- IS DISTINCT FROMを使ったNULLの検索
SELECT * FROM Bugs WHERE assigned_to IS NULL OR assigned_to <> 1;
SELECT * FROM Bugs WHERE assigned_to IS DISTINCT FROM 1;

-- MySQLではIS DISTINCT FROMの代わりにNULL安全等価演算子 <=> を使う
SELECT * FROM Bugs WHERE NOT (assigned_to <=> 1);
