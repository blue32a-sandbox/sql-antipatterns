<?php
$sortorder = "date_reported";

if (preg_match("/([_[:alnum:]]+)/", $_GET["order"], $matches)) {
  $sortorder = $matches[1];
}

$sql = "SELECT * FROM Bugs ORDER BY $sortolrder";
$stmt = $pdo->query($sql);
