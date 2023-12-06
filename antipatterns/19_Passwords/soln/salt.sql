CREATE TABLE Accounts (
  account_id     SERIAL PRIMARY KEY,
  account_name   VARCHAR(20),
  email          VARCHAR(100) NOT NULL,
  password_hash  CHAR(64) NOT NULL,
  salt           BINARY(20) NOT NULL
);

INSERT INTO Accounts (account_id, account_name, email, password_hash, salt)
VALUES (123, 'billkarwin', 'bill@example.com',
  SHA2('xyzzy' || 'G0y6cf3$.ydLVkx4I/50', 256), 'G0y6cf3$.ydLVkx4I/50');

SELECT (password_hash = SHA2('xyzzy' || salt, 256)) AS password_matches
FROM Accounts
WHERE account_id = 123;

-- MySQL
INSERT INTO Accounts (account_id, account_name, email, password_hash, salt)
VALUES (123, 'billkarwin', 'bill@example.com',
  SHA2(CONCAT('xyzzy', 'G0y6cf3$.ydLVkx4I/50'), 256), 'G0y6cf3$.ydLVkx4I/50');

SELECT (password_hash = SHA2(CONCAT('xyzzy', salt), 256)) AS password_matches
FROM Accounts
WHERE account_id = 123;
