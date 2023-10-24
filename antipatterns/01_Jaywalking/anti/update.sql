-- 1.2.4 特定の製品に関するアカウントの更新
UPDATE Products
SET account_id = account_id || ',' || 56
WHERE product_id = 123;

-- MySQL 8.0
UPDATE Products
SET account_id = CONCAT(account_id, ',', 56)
WHERE product_id = 123;
