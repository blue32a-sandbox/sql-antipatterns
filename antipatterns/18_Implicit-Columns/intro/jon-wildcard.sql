-- 図書館のデータベースで、シンプルなSQLクエリが奇妙な結果を返した
SELECT * FROM Books b INNER JOIN Authors a ON b.author_id = a.author_id;
