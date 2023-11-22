-- 導出テーブルを使用する
SELECT m.product_id, m.latest, b1.bug_id
FROM Bugs b1 INNER JOIN BugsProducts bp1 USING (bug_id)
  INNER JOIN (SELECT bp2.product_id, MAX(b2.date_reported) AS latest
    FROM Bugs b2 INNER JOIN BugsProducts bp2 USING (bug_id)
    GROUP BY bp2.product_id) m
  ON bp1.product_id = m.product_id AND b1.date_reported = m.latest;
