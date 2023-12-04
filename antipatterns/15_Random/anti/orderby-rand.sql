-- ランダムにソートを行い、最初の行を取得する
-- 非決定性を持つ式によるソートなので、インデックスのメリットが得られない

-- MySQL
SELECT * FROM Bugs ORDER BY RAND() LIMIT 1;
