-- 特定の２つのタグが付けられたバグを検索するクエリ
SELECT * FROM Bugs
  INNER JOIN Tags AS t1 USING (bug_id)
  INNER JOIN Tags AS t2 USING (bug_id)
WHERE t1.tag = 'printing' AND t2.tag = 'performance';
