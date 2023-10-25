-- 2.4 アンチパターンを用いてもよい場合

-- 再帰クエリをサポートしていないOracle Databaseの独自構文
SELECT * FROM Comments
START WITH comment_id = 9876
CONNECT BY PRIOR parent_id = comment_id;
