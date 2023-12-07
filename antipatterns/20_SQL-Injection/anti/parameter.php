<?php
// プリペアドステートメント
$stmt = $pdo->prepare("SELECT * FROM Projects WHERE project_name = ?");
$stmt->bindValue(1, $_REQUEST["name"], PDO::PARAM_STR);
$stmt->execute();

// 値のリストを１つのパラメータにすることはできない
$stmt = $pdo->prepare("SELECT * FROM Bugs WHERE bug_id IN( ? )");
$stmt->bindValue(1, "1234,3456,5678", PDO::PARAM_STR);
$stmt->execute();

// テーブル識別子もパラメータとして扱えない
$stmt = $pdo->prepare("SELECT * FROM ? WHERE bug_id = 1234");
$stmt->bindValue(1, "Bugs", PDO::PARAM_STR);
$stmt->execute();

// 列名もパラメータとして扱えない
$stmt = $pdo->prepare("SELECT * FROM Bugs WHERE ORDER BY ?");
$stmt->bindValue(1, "date_reported", PDO::PARAM_STR);
$stmt->execute();

// SQL予約語もパラメータにならない
$stmt = $pdo->prepare("SELECT * FROM Bugs WHERE ORDER BY date_reported ?");
$stmt->bindValue(1, "DESC", PDO::PARAM_STR);
$stmt->execute();
