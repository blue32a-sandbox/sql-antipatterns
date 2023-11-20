-- NULLとの比較は決してTURUにならないので、どちらのクエリもNULLの行を返さない
SELECT * FROM Bugs WHERE NOT assigned_to = NULL;
SELECT * FROM Bugs WHERE NOT assigned_to <> NULL;
