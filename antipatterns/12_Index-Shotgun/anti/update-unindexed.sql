-- インデックスを定義していない列で検索する場合、テーブル全体を検索しなければならない
UPDATE Bugs SET status = 'OBSOLETE' WHERE date_reported < '2000-01-01';
