<?php
$password = $_REQUEST['password'];
$userid = $_REQUEST['userid'];
$sql = "UPDATE Accounts SET password_hash = SHA2('$password', 256)
    WHERE account_id = $userid";
