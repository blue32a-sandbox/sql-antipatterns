-- コメントはBugまたはFeatureRequestsのどちらに属するかに関わらず、１つのテーブルに格納したい
-- しかし、

-- 複数の親テーブルを参照する外部キーを宣言することはできない
CREATE TABLE Comments (
  -- ...
  FOREIGN KEY (issue_id)
    REFERENCES Bugs(issue_id) OR FEatureRequests(issue_id)
);

-- 行ごとに異なるテーブルを結合するSQLを書くことはできない
SELECT c.*, i.summary, i.status
FROM Comments AS c
INNER JOIN c.issue_type AS i USING (Issue_id);
