<?php
// SQLクエリでパスワードを平文として扱わないために、アプリケーションでハッシュ化する

$password = 'xyzzy';

$stmt = $pdo->query(
  "SELECT salt
   FROM Accounts
   WHERE account_name = 'bill'");

$row = $stmt->fetch();
$salt = $row[0];

$hash = hash('sha256', $password . $salt);

$stmt = $pdo->query("
  SELECT (password_hash = '$hash' AS password_matches
  FROM Accounts AS a
  WHERE a.account_name = 'bill'");

$row = $stmt->fetch();
if ($row === false) {
  // アカウント'bill'は存在しない
} else {
  $password_matches = $row[0];
  if (!$password_matches) {
    // パスワードが間違っている
  }
}
