-- 変更をする場合、空いている列を確認しなければならない
SELECT * FROM Bugs WHERE bug_id = 3456;

-- tag2がNULLであれことがわかったので、UPDATE文を作成する
UPDATE Bugs SET tag2 = 'performance' WHERE bug_id = 3456;
