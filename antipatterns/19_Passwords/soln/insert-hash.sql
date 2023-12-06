-- データベース製品のハッシュ拡張を使って、ハッシュ化されたパスワードを格納する
-- MySQLのSHA2関数
INSERT INTO Accounts (account_id, account_name, email, password_hash)
VALUES (123, 'billkarwin', 'bill@example.com', SHA2('xyzzy', 256));
