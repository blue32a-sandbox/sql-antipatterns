-- 複数のUPDATEステートメントを生成するクエリ
SELECT CONCAT('UPDATE Inventory ',
  ' SET last_used = ''', MAX(u.usage_date), '''',
  ' WHERE inventory_id = ', u.inventory_id, ';') AS update_statument
FROM CumputerUsage u
GROUP BY u.inventory_id;
