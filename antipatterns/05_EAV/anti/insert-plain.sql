-- 通常のテーブル設計であれば、列をDATE型で定義することで、ファーマットの問題を回避できる
INSERT INTO Issues (date_reported)
VALUES ('banana'); -- エラー！
