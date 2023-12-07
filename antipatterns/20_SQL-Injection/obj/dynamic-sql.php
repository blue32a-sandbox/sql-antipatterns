<?php

//...他のコード
$sql = "SELECT * FROM Bugs WHERE bug_id =  $bug_id";
$stmt = $pdo->query($sql);
