-- プリペアドステートメントを用いることで、以下は安全なSQLステートメントとして解釈される
UPDATE Accounts SET password_hash = SHA2('xyzzy', 256)
WHERE account_id = '123 OR TRUE';
