-- 浮動小数点数同士がごく小さな範囲内にある場合、実質的に等しいものとして扱う
SELECT * FROM Accounts WHERE ABS(hourly_rate - 59.95) < 0.000001;

-- より高い精度で比較すると失敗する
SELECT * FROM Accounts WHERE ABS(hourly_rate - 59.95) < 0.0000001;
