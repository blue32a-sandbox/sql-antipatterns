-- １と最大値の間のランダムなキー値を選択する
SELECT b1.*
FROM Bugs AS b1
INNER JOIN (
  SELECT CEIL(RAND() * (SELECT MAX(bug_id) FROM Bugs)) AS rand_id
) AS b2 ON b1.bug_id = b2.rand_id;
