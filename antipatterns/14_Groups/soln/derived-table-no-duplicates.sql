-- product_idごとに１行のみの取得を保証したい場合、外部クエリでもう１回グループ化関数を使える
SELECT m.product_id, m.latest, MAX(b1.bug_id) AS latest_bug_id
FROM Bugs b1 INNER JOIN
  (SELECT product_id, MAX(date_reported) AS latest
   FROM Bugs b2 INNER JOIN BugsProducts USING (bug_id)
   GROUP BY product_id) m
  ON b1.date_reported = m.latest
GROUP BY m.product_id, m.latest;
