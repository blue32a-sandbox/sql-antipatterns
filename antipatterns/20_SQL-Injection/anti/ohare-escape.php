<?php
// PDOのquote関数を用いたエスケープ
$project_name = $pdo->quote($_REQUEST['name']);
$sql = "SELECT * FROM Projects WHERE project_name = $project_name";
