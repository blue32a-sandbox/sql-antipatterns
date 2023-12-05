-- 修正したバグの中で顧客から報告されたバグの数
SELECT COUNT(*) AS how_many_customer_bugs
FROM Bugs b INNER JOIN Accounts cust ON b.reported_by = cust.account_id
WHERE b.status = 'FIXED' AND cust.email NOT LIKE '%@example.com';
