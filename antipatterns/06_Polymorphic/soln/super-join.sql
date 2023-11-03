-- 特定のコメントに関連付いているバグまたは機能要求を取得するクエリ
SELECT *
FROM Comments AS c
  LEFT OUTER JOIN Bugs AS b USING (issue_id)
  LEFT OUTER JOIN FeatureRequests AS f USING (issue_id)
WHERE c.comment_id = 9876;

-- 特定のバグのコメントを取得するクエリ
SELECT *
FROM Bugs AS b
  INNER JOIN Comments AS c USING (issue_id)
WHERE b.issue_id = 1234;
