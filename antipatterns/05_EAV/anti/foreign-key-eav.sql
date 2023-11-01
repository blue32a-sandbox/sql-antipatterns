-- EAV設計ではvalue列に外部キーを定義できない
CREATE TABLE IssueAttributes (
  issue_id         BIGINT UNSIGNED NOT NULL,
  attr_name        VARCHAR(100) NOT NULL,
  attr_value       VARCHAR(100),
  FOREIGN KEY (attr_value) REFERENCES BugStatus(status) -- すべての属性がBugStatusに存在しなくてはならない
);
