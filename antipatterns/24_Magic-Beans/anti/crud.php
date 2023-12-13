<?php
// バグの修正担当エンジニアを変更する処理をモデルに追加した
class CustomBugs extends BaseBugs
{
  public function assignUesr(Accounts $a)
  {
    $this->assigned_to = $a->account_id;
    $this->save();
    mail($a->email, "バグ担当に任命されました",
      "あなたはバグ #{$this->bug_id} の修正担当に任命されました。");
  }
}

// 上記のメソッドを迂回して、電子メールを送信せずにバグ担当者を割り当てるコードを書いてしまった
$bugsTable = Doctrine_Core::getTable('Bugs');
$bug = $bugsTable->find(1234);
$bug->assigned_to = $user->account_id;
$bug->save();
