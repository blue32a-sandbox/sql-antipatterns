-- 1.5.2 集約クエリの作成

-- 製品ごとのアカウントの数
SELECT product_id, COUNT(*) AS accounts_per_product
FROM Contacts
GROUP BY product_id;


-- アカウントごとの製品数
SELECT account_id, COUNT(*) AS products_per_account
FROM Contacts
GROUP BY account_id;


-- 最も関連アカウント数の多い製品
SELECT c.product_id, c.accounts_per_product
FROM (
  SELECT product_id, COUNT(*) AS accounts_per_product
  FROM Contacts
  GROUP BY product_id
) AS c
HAVING c.accounts_per_product = MAX(c.accounts_per_product);

-- MySQL 8.0 でこのSQLを実行するとエラーが発生する
-- #1140 - In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'c.product_id'; this is incompatible with sql_mode=only_full_group_by
-- MySQL 5.7 からSQLモードのONLY_FULL_GROUP_BYが追加されたため。
