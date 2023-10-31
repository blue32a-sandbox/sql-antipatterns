-- 削除する前に、子の行が存在しないことを確認する必要がある
SELECT bug_id FROM Bugs WHERE reported_by = 1;

DELETE FROM Accounts WHERE account_id = 1;
