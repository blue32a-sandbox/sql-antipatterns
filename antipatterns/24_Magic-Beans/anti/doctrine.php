<?php
// Doctrine（バージョン１）によるアクティブレコードの例
$bugsTable = Doctrine_Core::getTable('Bugs');
$bugsTable->find(1234);

$bug = new Bugs();
$bug->summary = "保存時にクラッシュが発生";
$bug->save();
