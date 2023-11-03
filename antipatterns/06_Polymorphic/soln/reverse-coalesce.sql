-- 複数の親テーブルに対するクエリ結果を、
-- 親テーブルたちがあたかも１つのテーブルに格納しているかのように扱う。
-- COALESCE関数を用いたクエリ
SELECT c.*,
  COALESCE(b.issue_id,    f.issue_id   ) AS issue_id,
  COALESCE(b.description, f.description) AS description,
  COALESCE(b.reporter,    f.reporter   ) AS reporter,
  COALESCE(b.priority,    f.priority   ) AS priority,
  COALESCE(b.status,      f.status     ) AS status,
  b.severity,
  b.version_affected,
  f.sponsor
FROM Comments AS c
  LEFT OUTER JOIN (
    BugsComments INNER JOIN Bugs AS b
      USING (issue_id)
  ) USING (comment_id)
  LEFT OUTER JOIN (
    FeaturesComments INNER JOIN FeatureRequests AS f
      USING (issue_id)
  ) USING (comment_id)
WHERE c.comment_id = 9876;
