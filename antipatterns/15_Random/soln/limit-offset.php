<?php
// オフセットを用いてランダムに行を選択する
// LIMIT句をサポートするデータベースの場合
$rand_sql = "SELECT FLOOR(
  RAND() * (SELECT COUNT(*) FROM Bugs)
  ) AS id_offset";
$result = $pdo->query($rand_sql)->fetch(PDO::FETCH_ASSOC);
$offset = intval($result['id_offset']);

$sql = "SELECT * FROM Bugs LIMIT 1 OFFSET :offset";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
$stmt->execute();
$rand_bug = $stmt->fetch();
