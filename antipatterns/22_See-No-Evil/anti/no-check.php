<?php
// 戻り値のチェックがされておらず、接続失敗や構文エラー、制約違反などがあると、
// アプリケーションは正常に動作しなくなる。
$pdo = new PDO("mysql:dbname=test;host=db.example.com",
    "dbuser", "dbpassword");
$sql = "SELECT bug_id, summary, date_reported FROM Bugs
    WHERE assigned_to = ? AND status = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute(array(1, "OPEN"));
$bug = $stmt->fetch();
