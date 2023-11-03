-- バグのコメントを取得するクエリ
SELECT *
FROM Bugs AS b INNER JOIN Comments AS c
  ON b.issue_id = c.issue_id AND c.issue_type = 'Bugs'
WHERE b.issue_id = 1234;

-- コメントが付いたバグまたは機能要求を取得するクエリ
SELECT *
FROM Comments AS c
  LEFT OUTER JOIN Bugs AS b
    ON c.issue_id = b.issue_id AND c.issue_type = 'Bugs'
  LEFT OUTER JOIN FeatureRequests AS f
    ON f.issue_id = c.issue_id AND c.issue_type = 'FeatureRequests';
