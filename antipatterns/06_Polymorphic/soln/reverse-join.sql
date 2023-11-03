-- 特定のバグのコメントを取得するクエリ
SELECT *
FROM BugsComments AS b
  INNER JOIN Comments AS c USING (comment_id)
WHERE b.issue_id = 1234;

-- 特定のコメントに関連付いているバグまたは機能要求を取得するクエリ
SELECT *
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
