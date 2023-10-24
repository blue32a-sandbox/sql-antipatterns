<?php

$pdo = new PDO('mysql:host=mysql;dbname=01_Jaywalking_Anti', 'root', 'examplepw');

/**
 * 1.2.4 特定の製品に関連するアカウントの更新
 *
 * IDをリストから削除する
 */
$stmt = $pdo->query(
  "SELECT account_id FROM Products WHERE product_id = 123");
$row = $stmt->fetch();
$contact_list = $row['account_id'];

// PHPコードでのlistの変更
$value_to_remove = "34";
// $contact_list = split(",", $contact_list); split関数は PHP 7.0.0 で削除
$contact_list = explode(",", $contact_list);
$key_to_remove = array_search($value_to_remove, $contact_list);
unset($contact_list[$key_to_remove]);
$contact_list = join(",", $contact_list);

$stmt = $pdo->prepare(
  "UPDATE Products SET account_id = ?
   WHERE product_id = 123");
$stmt->execute(array($contact_list));
