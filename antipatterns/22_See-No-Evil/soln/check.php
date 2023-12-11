<?php
// データベースAPI呼び出しの戻り値と例外のチェックを行う
try {
    $pdo = new PDO("mysql:dbname=test;host=db.example.com",
        "dbuser", "dbpassword");
} catch (PDOException $e) {
    report_error($e->getMessage());
    return;
}

$sql = "SELECT bug_id, summary, date_reported FROM Bugs
    WHERE assigned_to = ? AND status = ?";

if (($stmt = $pdo->prepare($sql)) === false) {
    $error = $pdo->errorInfo();
    report_error($error[2]);
    return;
}

if ($stmt->execute(array(1, "OPEN")) === false) {
    $error = $pdo->errorInfo();
    report_error($error[2]);
    return;
}

if (($bug = $stmt->fetch()) === false) {
    $error = $pdo->errorInfo();
    report_error($error[2]);
    return;
}
