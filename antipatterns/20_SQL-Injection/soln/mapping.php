<?php
// 悪い例）ユーザーは、どのようなパラメータ値でも送ることができるので安全ではない
$sortorder = $_REQUEST["order"];
$direction = $_REQUEST["dir"];

// 定義済みの値を宣言する
$sortorders = array("status" => "status", "data" => "date_reported");
$directions = array("up" => "ASC", "down" => "DESC");

// デフォルト値を設定する
$sortorder = "bug_id";
$direction = "ASC";

// ユーザーの入力値が定義済みの値の中にあるかどうかを確認し、存在すればその定義された値を使う
if (array_key_exists($_REQUEST["order"], $sortorders)) {
  $sortorder = $sortorders[$_REQUEST["order"]];
}
if (array_key_exists($_REQUEST["dir"], $directions)) {
  $direction = $directions[$_REQUEST["dir"]];
}

$sql = "SELECT * FROM Bugs ORDER BY $sortorder $direction";
$stmt = $pdo->query($sql);
