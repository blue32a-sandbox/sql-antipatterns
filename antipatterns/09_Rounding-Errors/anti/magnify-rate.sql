-- 値を１０億倍にすることで、誤差を確認する
SELECT hourly_rate * 1000000000 FROM Accounts WHERE account_id = 123;
