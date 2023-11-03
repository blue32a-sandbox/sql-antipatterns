-- 非オブジェクト指向の例
-- 親テーブル同士にまったく関連がない場合

-- どちらかの親を１つ選択しなければならないので、両方が同じ住所であっても関連付けることはできない
CREATE TABLE Addresses (
  address_id   SERIAL PRIMARY KEY,
  parent       VARCHAR(20), -- 'Users'または'Orders'が入る
  parent_id    BIGINT UNSIGNED NOT NULL,
  address      TEXT
);

-- 顧客が出荷先住所だけでなく、請求先住所を持つ場合
CREATE TABLE Addresses (
  address_id   SERIAL PRIMARY KEY,
  parent       VARCHAR(20), -- 'Users'または'Orders'が入る
  parent_id    BIGINT UNSIGNED NOT NULL,
  users_usage  VARCHAR(20), -- 'billing'または'shipping'が入る
  order_usage  VARCHAR(20), -- 'billing'または'shipping'が入る
  address      TEXT
);
