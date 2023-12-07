-- 値のエスケープは文字列以外のデータには用いることができない
UPDATE Accounts SET password_hash = SHA2('xyzzy', 256)
WHERE account_id = '123 OR TRUE';
