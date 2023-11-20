-- NULLリテラルは、パラメータには使えない
SELECT * FROM Bugs WHERE assigned_to = ?;
