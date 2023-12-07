-- ストアドプロシージャを使用した安全性の低い動的SQL
-- input_userid変数は動的に挿入されており、安全ではない
CREATE PROCEDURE UpdatePassword(input_password VARCHAR(20),
  input_userid VARCHAR(20))
BEGIN
  SET @sql (CONCAT('UPDATE Accounts
    SET password_hash = SHA2(', QUOTE(input_password), ', 256)
    WHERE account_id = ', input_userid);
  PREPARE stmt FROM @sql;
  EXECUTE stmt;
END
