SELECT * FROM Bugs AS b
  INNER JOIN BugsProducts as bp
    ON b.bug_id = bp.bug_id;

-- 上記のクエリはUSINGを使用して書き直せる
SELECT * FROM Bugs AS b
  INNER JOIN BugsProducts as bp USING (bug_id);

-- id列だと冗長なON構文を常に使わなくてはならない
SELECT * FROM Bugs AS b
  INNER JOIN BugsProducts as bp
    ON b.id = bp.bug_id;
