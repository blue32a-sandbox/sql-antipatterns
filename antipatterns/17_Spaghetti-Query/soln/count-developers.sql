-- バグを修正した開発者の数
SELECT COUNT(DISTINCT assignee_to) AS how_many_developers
FROM Bugs
WHERE status = 'FIXED';
