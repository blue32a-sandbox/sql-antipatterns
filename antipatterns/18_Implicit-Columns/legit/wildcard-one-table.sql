-- テーブルごとにワイルドカードを使う
SELECT b.*, a.first_name, a.email
FROM Bugs b INNER JOIN Accounts a
  ON b.reported_by = a.account_id;
