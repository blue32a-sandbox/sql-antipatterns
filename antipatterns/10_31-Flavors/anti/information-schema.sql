-- MySQLのINFORMATION_SCHEMAシステムビューから列のメタデータ定義を取得するクエリ
SELECT column_type
FROM information_schema.columns
WHERE table_schema = 'bugtracker_schema'
  AND table_name = 'bugs'
  AND column_name = 'status';
