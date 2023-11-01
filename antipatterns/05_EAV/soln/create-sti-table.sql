-- シングルテーブル継承（Single Table Inheritance）
CREATE TABLE Issues (
  issue_id         SERIAL PRIMARY KEY,
  reported_by      BIGINT UNSIGNED NOT NULL,
  product_id       BIGINT UNSIGNED,
  priority         VARCHAR(20),
  version_resolved VARCHAR(20),
  status           VARCHAR(20),
  issue_type       VARCHAR(10), -- 'BUG' または 'FEATURE'
  severity         VARCHAR(20), -- Bug のみが使う
  version_affected VARCHAR(20), -- Bug のみが使う
  sponsor          VARCHAR(50), -- FeatureRequest のみが使う
  FOREIGN KEY (reported_by) REFERENCES Accounts(account_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);