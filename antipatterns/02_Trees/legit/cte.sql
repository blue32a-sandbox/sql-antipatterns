-- 2.4 アンチパターンを用いてもよい場合

-- WITHキーワードの後に共通テーブル式（CTE）を指定する形式の再帰クエリ構文を定義
WITH RECURSIVE CommentTree
    (comment_id, bug_id, author, comment, depth)
AS (
    SELECT *, 0 AS depth FROM Comments
    WHERE parent_id IS NULL
  UNION ALL
    SELECT c.*, ct.depth+1 AS depth FROM CommentTree ct
    INNER JOIN Comments c ON ct.comment_id = c.parent_id
)
SELECT * FROM CommentTree WHERE bug_id = 1234;

-- 上のクエリをMySQL 8.0 で確認したところ、次のようなエラーが発生した
-- #1353 - In definition of view, derived table or common table expression, SELECT list and column names list have different column counts
-- CommentTreeのカラム数が一致しないこと原因（parent_id, comment_dateがない）
-- さらにカラムの順番も一致さないと、期待する結果が得られない

-- MySQL 8.0 で動作確認したクエリ
WITH RECURSIVE CommentTree
AS (
    SELECT *, 0 AS depth FROM Comments
    WHERE parent_id IS NULL
  UNION ALL
    SELECT c.*, ct.depth+1 AS depth FROM CommentTree ct
    INNER JOIN Comments c ON ct.comment_id = c.parent_id
)
SELECT * FROM CommentTree WHERE bug_id = 1234;
