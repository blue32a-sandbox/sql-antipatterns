-- COALESCE関数で動的なデフォルト値を設定する
SELECT first_name || COALESCE(' ' || middle_initial || ' ', ' ') || last_name
  AS full_name
FROM Accounts;

-- MySQL
SELECT CONCAT(first_name, COALESCE(CONCAT(' ', middle_initial, ' '), ' '), last_name)
  AS full_name
FROM Accounts;
