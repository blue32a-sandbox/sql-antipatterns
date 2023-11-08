-- バグレポートの年をまたぐ日付変更
-- データ不正が発生しないように、対象テーブルから行を削除し、別のテーブルに挿入する
INSERT INTO Bugs_2009 (bug_id, date_reported, /* ... */)
  SELECT bug_id, date_reported, /* ... */
  FROM Bugs_2010
  WHERE bug_id = 1234;

DELETE FROM Bugs_2010 WHERE bug_id = 1234;
