-- 1.2.1 特定のアカウントに関連する製品の検索
SELECT * FROM Products WHERE account_id REGEXP '[[:<:]]12[[:>:]]';

-- MySQL 8.0 の例
SELECT * FROM Products WHERE account_id REGEXP '\\b12\\b';


-- 1.2.2 特定の製品に関連するアカウントの検索
SELECT * FROM Products AS p INNER JOIN Accounts AS a
  ON p.account_id REGEXP '[[:<:]]' || a.account_id || '[[:>:]]'
WHERE p.product_id = 123;

-- MySQL 8.0 の例
SELECT * FROM Products AS p INNER JOIN Accounts AS a
  ON p.account_id REGEXP CONCAT('\\b', a.account_id, '\\b')
WHERE p.product_id = 123;
