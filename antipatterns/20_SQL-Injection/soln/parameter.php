<?php
$sql = "UPDATE Accounts
    SET password_hash = SHA2(?, 256)
    WHERE account_id = ?";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(1, $_REQUEST["password"], PDO::PARAM_STR);
$stmt->bindValue(2, intval($_REQUEST["userid"]), PDO::PARAM_INT);
$stmt->execute();
