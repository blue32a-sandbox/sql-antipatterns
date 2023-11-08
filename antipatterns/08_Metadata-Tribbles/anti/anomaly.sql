-- バグレポートの年をまたぐ日付変更
-- データ不正が発生する例
UPDATE Bugs_2010
SET date_reported = '2009-12-27'
WHERE bug_id = 1234;
