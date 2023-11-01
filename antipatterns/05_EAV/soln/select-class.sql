-- クラステーブル継承で、全てのサブタイプを取得するクエリ
SELECT i.*, b.*, f.*
FROM Issues AS i
  LEFT JOIN Bugs AS b USING (issue_id)
  LEFT JOIN FeatureRequests AS f USING (issue_id);
