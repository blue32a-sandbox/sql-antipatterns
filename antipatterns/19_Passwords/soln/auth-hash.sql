-- ハッシュ値と比較して、パスワードの妥当性を確認する
SELECT CASE WHEN password_hash = SHA2('xyzzy', 256) THEN 1 ELSE 0 END
  AS password_matches
FROM Accounts
WHERE account_id = 123;
