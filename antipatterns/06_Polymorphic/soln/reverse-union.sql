-- 複数の親テーブルに対するクエリ結果を、
-- 親テーブルたちがあたかも１つのテーブルに格納しているかのように扱う。
-- UNIONを用いたクエリ
SELECT b.issue_id, b.description, b.reporter, b.priority, b.status,
    b.serverity, b.version_affected,
    NULL AS sponsor
  FROM Comments AS c
    INNER JOIN (
      BugsComments INNER JOIN Bugs AS b
        USING (issue_id)
    ) USING (comment_id)
  WHERE c.comment_id = 9876
UNION
  SELECT b.issue_id, b.description, b.reporter, b.priority, b.status,
    NULL AS b.serverity, NULL AS b.version_affected,
    sponsor
  FROM Comments AS c
    INNER JOIN (
      FeaturesComments INNER JOIN FeatureRequests AS b
        USING (issue_id)
    ) USING (comment_id)
  WHERE c.comment_id = 9876;
