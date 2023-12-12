<?php
// データベースのアイソレーションテストの例

class DatabaseTest extends \PHPUnit_Framework_TestCase
{
    protected $pdo;

    public function setUp()
    {
        $this->pdo = new PDO("mysql:dbname=bugs", "testuser", "xxxxxx");
    }

    public function testTableBugsExists()
    {
        $stmt = $this->pdo->query("SELECT COUNT(*) FROM Bugs");
        $err = $this->pdo->errorInfo();
        $this->assertInternalType("object", $stmt, $err[2]);
        $this->assertEquals("PDOStatement", get_class($stmt));
    }

    public function testTableBugsColomnBugIdExists()
    {
        $stmt = $this->pdo->query("SELECT COUNT(bug_id) FROM Bugs");
        $err = $this->pdo->errorInfo();
        $this->assertInternalType("object", $stmt, $err[2]);
        $this->assertEquals("PDOStatement", get_class($stmt));
    }
}
