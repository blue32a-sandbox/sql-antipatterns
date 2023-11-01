-- 具象テーブル継承で、すべてのオブジェクトを、サブタイプに関わらず取得するためのビュー
CREATE VIEW Issues AS
  SELECT b.issue_id, b.reported_by, 'BUG' AS issue_type
  FROM Bugs AS b
    UNION ALL
  SELECT f.issue_id, f.reported_by, 'FEATURE' AS issue_type
  FROM FeatureRequests AS f;
