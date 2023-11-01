-- 通常のテーブル設計であれば、外部キーを定義することで参照整合性を強制できる
CREATE TABLE Issues (
  issue_id         SERIAL PRIMARY KEY,
  -- 他の列...
  status           VARCHAR(20) NOT NULL DEFAULT 'NEW',
  FOREIGN KEY (status) REFERENCES BugStatus(status)
);
