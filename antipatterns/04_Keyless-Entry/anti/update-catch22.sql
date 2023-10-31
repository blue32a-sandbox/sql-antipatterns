-- 外部キー制約による、子の行が依存する列をUPDATEする場合のジレンマ

-- 親の行を更新するまで子の行は更新できない
UPDATE BugStatus SET status = 'INVALID' WHERE status = 'BOGUS'; -- エラー！

-- 子の行を更新するまで親の行は更新できない
UPDATE Bugs SET status = 'INVALID' WHERE status = 'BOGUS'; -- エラー！
