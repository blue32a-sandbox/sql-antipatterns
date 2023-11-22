-- JOINを使用して、存在しないかもしれない行に対する突き合わせ処理を行うことができる
SELECT bp1.product_id, b1.date_reported AS latest, b1.bug_id
FROM Bugs b1
INNER JOIN BugsProducts bp1
  ON b1.bug_id = bp1.bug_id
LEFT OUTER JOIN (
    Bugs AS b2 INNER JOIN BugsProducts AS bp2
      ON b2.bug_id = bp2.bug_id
  )
  ON (bp1.product_id = bp2.product_id
      AND (b1.date_reported < b2.date_reported
        OR b1.date_reported = b2.date_reported AND b1.bug_id < b2.bug_id))
WHERE b2.bug_id IS NULL;
