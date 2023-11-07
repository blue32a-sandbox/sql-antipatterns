-- 新しい列を追加した場合、SQL文の変更が必要になる
SELECT * FROM Bugs
WHERE tag1 = 'performance'
   OR tag2 = 'performance'
   OR tag3 = 'performance'
   OR tag4 = 'performance'; -- このステートメントを追加しなければならない
