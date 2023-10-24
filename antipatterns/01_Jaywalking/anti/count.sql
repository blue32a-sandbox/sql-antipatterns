-- 1.2.3 集約クエリの作成
SELECT product_id, LENGTH(account_id) - LENGTH(REPLACE(account_id, ',', '')) + 1
  AS contacts_per_product
FROM Products;
