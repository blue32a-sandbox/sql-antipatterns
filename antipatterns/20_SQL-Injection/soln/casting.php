<?php
// 数値のような単純なケースでは、型キャスト関数が使える
$bugid = intval($_GET["bugid"]);
$sql = "SELECT * FROM Bugs WHERE bug_id = $bugid";
$stmt = $pdo->query($sql);
