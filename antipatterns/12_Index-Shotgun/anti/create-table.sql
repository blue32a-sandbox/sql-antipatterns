CREATE TABLE Bugs (
  bug_id        SERIAL PRIMARY KEY,
  date_reported DATE NOT NULL,
  summary       VARCHAR(80) NOT NULL,
  status        VARCHAR(10) NOT NULL,
  hours         NUMERIC(9,2),
  INDEX (bug_id), -- 主キーにインデックスを定義するのは冗長
  INDEX (summary), -- 長い文字列のインデックスはサイズが大きくなる傾向がある。加えてサマリー情報への検索やソートはあまり考えられない
  INDEX (hours), -- この列の特定の値を検索することは、ほとんどないと考えられる

  -- 複合インデックスの多くは冗長であったり、使用頻度が極めて低くなってしまいがち
  -- また、列を定義した順に使わなければならない
  INDEX (bug_id, date_reported, status)
);
