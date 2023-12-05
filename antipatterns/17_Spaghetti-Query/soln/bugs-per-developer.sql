-- 開発者１人当たりの平均バグ修正数
SELECT AVG(bugs_per_developer) AS average_bugs_per_developer
FROM (SELECT dev.account_id, COUNT(*) AS bugs_per_developer
      FROM Bugs b INNER JOIN Accounts dev
        ON b.assignee_to = dev.account_id
      WHERE b.status = 'FIXED'
      GROUP BY dev.account_id) t;
