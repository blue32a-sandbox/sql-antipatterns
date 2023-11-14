-- データベースの行を削除しても、パスの指定先のファイルは削除されない
DELETE FROM Screenshots WHERE bug_id = 1234 and image_id = 1;
