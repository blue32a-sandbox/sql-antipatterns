-- 文字列連結演算子を用いて、ユーザーのフルネームを１列に整形する
SELECT first_name || ' ' || last_name AS full_name FROM Accounts;

-- MySQL
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM Accounts;
