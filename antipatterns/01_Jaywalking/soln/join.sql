-- 1.5.1

-- 特定のアカウントに関連する製品の検索
SELECT p.*
FROM Products AS p INNER JOIN Contacts AS c ON p.product_id = c.product_id
WHERE c.account_id = 12;


-- 特定の製品に関連するアカウントの検索
SELECT a.*
FROM Accounts AS a INNER JOIN Contacts AS c ON a.account_id = c.account_id
WHERE c.product_id = 123;
