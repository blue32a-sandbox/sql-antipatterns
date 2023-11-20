-- NOTを用いてもNULLが割り当てられた列を返さない
SELECT * FROM Bugs WHERE NOT (assigned_to = 123);
