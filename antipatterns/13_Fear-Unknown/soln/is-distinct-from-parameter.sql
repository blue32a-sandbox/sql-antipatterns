-- プリペアドステートメントで IS DISTINCT FROM を使う
SELECT * FROM Bugs WHERE assigned_to IS DISTINCT FROM ?;
