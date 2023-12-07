<?php
// 最適化のために、プリペアドステートメントではなく、直接値を挿入する方がよい場合もある
$quoted_sate = $pdo->quote($_REQUEST["states"]);
$sql = "SELECT * FROM Accounts WHERE account_status = $quoted_status";
$stmt = $pdo->query($sql);
