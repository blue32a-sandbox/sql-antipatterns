-- 垂直パーティショニング
-- まれにしか使用しない大きなデータを従属テーブルに格納する
CREATE TABLE ProductInstallers (
  product_id      BIGINT UNSIGNED NOT NULL,
  installer_image BLOG,
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
