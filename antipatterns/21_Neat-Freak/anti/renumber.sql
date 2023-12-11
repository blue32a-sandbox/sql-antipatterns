-- 最大の主キー値を持つ行を特定し、そのキーを欠番の最小値に更新する
UPDATE Bugs SET bug_id = 3 WHERE bug_id = 4;
