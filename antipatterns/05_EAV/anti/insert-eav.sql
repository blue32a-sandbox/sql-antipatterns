-- EAV設計ではデータ型を使えないので、無効な値を挿入できてしまう
INSERT INTO IssueAttributes (issue_id, attr_name, attr_value)
VALUES (1234, 'date_reported', 'banana'); -- エラーにはなりません！
