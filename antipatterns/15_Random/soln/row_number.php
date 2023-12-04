<?php
// オフセットを用いてランダムに行を選択する
// ウィンドウ関数であるROW_NUMBER関数をサポートするデータベースの場合
$rand_sql = "SELECT 1 + MOD(ABS(dbms_random.random()),
  (SELECT COUNT(*) FROM Bugs)) AS id_offset FROM dual";
$result = $pdo->query($rand_sql)->fetch(PDO::FETCH_ASSOC);
$offset = intval($result['id_offset']);

$sql = "WITH NumberedBugs AS (
  SELECT b.*, ROW_NUMBER() OVER (ORDER BY bug_id) AS RN FROM Bugs b
) SELECT * FROM NumberdBugs WHERE RN = :offset";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
$stmt->execute();
$rand_bug = $stmt->fetch();
