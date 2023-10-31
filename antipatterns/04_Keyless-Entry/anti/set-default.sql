-- 無効な値を、有効なデフォルト値に変更する
UPDATE Bugs SET status = DEFAULT WHERE status = 'BANANA';
