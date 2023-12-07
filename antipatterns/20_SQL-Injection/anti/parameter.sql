-- $stmt = $pdo->prepare("SELECT * FROM Bugs WHERE bug_id IN( ? )");
-- $stmt->bindValue(1, "1234,3456,5678", PDO::PARAM_STR);
-- MySQLでは、カンマ区切りの最初の数値のみが文字列パラメータとして渡されたかのように処理される
SELECT * FROM Bugs WHERE bug_id IN ( '1234' );

-- $stmt = $pdo->prepare("SELECT * FROM ? WHERE bug_id = 1234");
-- $stmt->bindValue(1, "Bugs", PDO::PARAM_STR);
-- テーブル名の代わりに文字列リテラルを入力したかのように処理され、構文エラーになる
SELECT * FROM 'Bugs' WHERE bug_id = 1234;

-- $stmt = $pdo->prepare("SELECT * FROM Bugs WHERE ORDER BY ?");
-- $stmt->bindValue(1, "date_reported", PDO::PARAM_STR);
-- 式が文字列定数として解釈され、ソートしても何も起こらない
SELECT * FROM Bugs WHERE ORDER BY 'date_reported';

-- $stmt = $pdo->prepare("SELECT * FROM Bugs WHERE ORDER BY date_reported ?");
-- $stmt->bindValue(1, "DESC", PDO::PARAM_STR);
-- リテラル文字列として解釈され、この例では構文エラーになる
SELECT * FROM Bugs ORDER BY date_reported 'DESC';
