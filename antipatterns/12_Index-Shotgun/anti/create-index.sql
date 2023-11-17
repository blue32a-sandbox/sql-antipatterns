-- first_nameで検索したい場合、このインデックスは役に立たない
CREATE INDEX TelephoneBook ON Accounts(last_name, first_name);


-- 列の順序がインデックスと異なるソートも役に立たない
SELECT * FROM Accounts ORDER BY first_name, last_name;
