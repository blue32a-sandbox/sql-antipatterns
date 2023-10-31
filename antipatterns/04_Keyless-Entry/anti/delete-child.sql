-- 外部キーを避けたい理由
-- 複数テーブルの関連し合う列を更新する際に、邪魔になると感じるから

DELETE FROM BugStatus WHERE status = 'BOGUS'; -- エラー！
DELETE FROM Bugs WHERE status = 'BOGUS'; -- まず子側の行を削除する
DELETE FROM BugStatus WHERE status = 'BOGUS'; -- 今度は成功する
