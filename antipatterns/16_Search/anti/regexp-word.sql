-- 意図しないマッチを解決するたに、単語境界のための特别なパターンを使用する
SELECT * FROM Bugs WHERE description REGEXP '[[:<:]]one[[:>:]]';

-- MySQL 8.0 の例
SELECT * FROM Bugs WHERE description REGEXP '\\bone\\b';
