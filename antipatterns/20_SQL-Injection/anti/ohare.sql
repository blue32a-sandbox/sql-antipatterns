-- $sql = "SELECT * FROM Projects WHERE project_name = '$project_name'";
-- $project_nameの値が"O'Hare"の場合、次のようなSQLになり、構文エラーが発生する
SELECT * FROM Projects WHERE project_name = 'O'Hare;
