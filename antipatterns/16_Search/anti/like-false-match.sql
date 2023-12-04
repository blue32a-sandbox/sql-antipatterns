-- 意図しないマッチが生じてしまう
SELECT * FROM Bugs WHERE description LIKE '%one%';
