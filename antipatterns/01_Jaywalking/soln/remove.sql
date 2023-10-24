-- 製品の連絡先の更新

-- 追加
INSERT INTO Contacts (product_id, account_id) VALUES (456, 34);

-- 削除
DELETE FROM Contacts WHERE product_id = 456 AND account_id = 34;
