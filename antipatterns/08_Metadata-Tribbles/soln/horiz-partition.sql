-- 水平パーティショニング
CREATE TABLE Bugs (
  bug_id        SERIAL PRIMARY KEY,
  -- 他の列...
  date_reported DATE
) PARTITION BY HASH ( YEAR(date_reported) )
  PARTITIONS 4;

-- MySQL 8.0で実行するとエラーになる
-- A PRIMARY KEY must include all columns in the table's partitioning function (prefixed columns are not considered).
