-- account_idの値に対して"123 OR TRUE"が指定されると、
-- すべてのアカウントのパスワードが変更されてしまう。
UPDATE Accounts SET password_hash = SHA2('xyzzy', 256)
WHERE account_id = 123 OR TRUE;
