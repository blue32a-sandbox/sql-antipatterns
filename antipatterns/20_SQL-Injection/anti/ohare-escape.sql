-- SQL標準では、引用符文字列を２つ重ねることで、１つの引用符文字列を表せることができる
SELECT * FROM Projects WHERE project_name = 'O''Hare';

-- 各種データベース製品では、バックスラッシュで後続の文字をエスケープすることができる
SELECT * FROM Projects WHERE project_name = 'O\'Hare';
