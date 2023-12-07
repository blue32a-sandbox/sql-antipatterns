-- $sql = "SELECT * FROM Bugs WHERE bug_id =  $bug_id";
-- $bug_idの値が"1234; DELETE FROM Bugs"の場合、次のようなSQLになる
SELECT * FROM Bugs WHERE bug_id = 1234; DELETE FROM Bugs
