-- フルテキストインデックスからキーワードを検索する
SELECT * FROM Bugs WHERE MATCH(summary, description) AGAINST ('crash');
