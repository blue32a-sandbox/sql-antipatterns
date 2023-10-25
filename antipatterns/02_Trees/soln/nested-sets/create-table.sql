-- 2.5.2 入れ子集合（Nested Sets）
CREATE TABLE Comments (
  comment_id   SERIAL PRIMARY KEY,
  nsleft       INTEGER NOT NULL,
  nsright      INTEGER NOT NULL,
  bug_id       BIGINT UNSIGNED NOT NULL,
  author       BIGINT UNSIGNED NOT NULL,
  comment_date DATETIME NOT NULL,
  comment      TEXT NOT NULL,
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id),
  FOREIGN KEY (author) REFERENCES Accounts(account_id)
);

-- データの例
INSERT INTO Comments (comment_id, nsleft, nsright, bug_id, author, comment_date, comment)
VALUES
  (1, 1, 14, 1, 1, '2023-10-25 01:33:40', 'このバグの原因は何かな？'),
  (2, 2, 5, 1, 2, '2023-10-25 01:35:45', 'ヌルポインターのせいじゃないかな？'),
  (3, 3, 4, 1, 1, '2023-10-25 01:36:24', 'そうじゃないよ。それは確認済みだ。'),
  (4, 6, 13, 1, 3, '2023-10-25 01:39:25', '無効な入力を調べてみたら？'),
  (5, 7, 8, 1, 2, '2023-10-25 01:40:04', 'そうか、バグの原因はそれだな。'),
  (6, 9, 12, 1, 1, '2023-10-25 01:40:37', 'よし、じゃあチェック機能を追加してもらえるかな？'),
  (7, 10, 11, 1, 3, '2023-10-25 01:41:09', '了解。修正したよ。');
