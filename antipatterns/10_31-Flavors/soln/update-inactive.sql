-- 値を廃止する
UPDATE BugStatus SET active = 'INACTIVE' WHERE status = 'DUPLICATE';
