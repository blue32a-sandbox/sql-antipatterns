-- 2.5.3 閉包テーブル（Closure Table）
CREATE TABLE Comments (
  comment_id   SERIAL PRIMARY KEY,
  bug_id       BIGINT UNSIGNED NOT NULL,
  author       BIGINT UNSIGNED NOT NULL,
  comment_date DATETIME NOT NULL,
  comment      TEXT NOT NULL,
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id),
  FOREIGN KEY (author) REFERENCES Accounts(account_id)
);

CREATE TABLE TreePaths (
  ancestor    BIGINT UNSIGNED NOT NULL,
  descendant  BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (ancestor, descendant),
  FOREIGN KEY (ancestor) REFERENCES Comments(comment_id),
  FOREIGN KEY (descendant) REFERENCES Comments(comment_id)
);

-- データの例
INSERT INTO Comments (comment_id, bug_id, author, comment_date, comment)
VALUES
  (1, 1, 1, '2023-10-25 01:33:40', 'このバグの原因は何かな？'),
  (2, 1, 2, '2023-10-25 01:35:45', 'ヌルポインターのせいじゃないかな？'),
  (3, 1, 1, '2023-10-25 01:36:24', 'そうじゃないよ。それは確認済みだ。'),
  (4, 1, 3, '2023-10-25 01:39:25', '無効な入力を調べてみたら？'),
  (5, 1, 2, '2023-10-25 01:40:04', 'そうか、バグの原因はそれだな。'),
  (6, 1, 1, '2023-10-25 01:40:37', 'よし、じゃあチェック機能を追加してもらえるかな？'),
  (7, 1, 3, '2023-10-25 01:41:09', '了解。修正したよ。');

INSERT INTO TreePaths (ancestor, descendant)
VALUES
  (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7),
  (2, 2), (2, 3),
  (3, 3),
  (4, 4), (4, 5), (4, 6), (4, 7),
  (5, 5),
  (6, 6), (6, 7),
  (7, 7);
