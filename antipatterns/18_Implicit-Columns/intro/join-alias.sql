-- 列にエイリアスを宣言する
SELECT b.title, a.title AS salutation
FROM Books b INNER JOIN Authors a ON b.author_id = a.author_id;
