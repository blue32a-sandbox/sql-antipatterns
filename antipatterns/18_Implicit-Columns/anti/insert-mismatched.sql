-- 列を追加したことにより、INSERTステートメントがエラーを返すようになる
INSERT INTO Bus VALUES (DEFAULT, CURRENT_DATE,
  '新規バグ', 'テスト[T987]が失敗します...',
  NULL, 123, NULL, NULL, DEFAULT, 'MEDIUM', NULL);
