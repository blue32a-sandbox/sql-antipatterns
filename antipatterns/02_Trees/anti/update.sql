-- 2.2.2 隣接リストのツリーのメンテナンス

-- ノードやサブツリーの移動
UPDATE Comments SET parent_id = 3 WHERE comment_id = 6;
