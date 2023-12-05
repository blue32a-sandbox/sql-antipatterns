-- 列を明示的に指定する
INSERT INTO Accounts (account_id, account_name, first_name, last_name, email,
  password_hash, portrait_image, hourly_rate) VALUES (DEFAULT,
  'bkarwin', 'Bill', 'Karwin', 'bill@example.com', SHA2('xyzzy', 256), NULL, 49.95);
