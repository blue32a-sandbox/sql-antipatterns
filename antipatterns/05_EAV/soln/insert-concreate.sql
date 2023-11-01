-- サブタイプに存在しない列の参照を防ぐことができる
INSERT INTO FeatureRequests (/* ... */, severity, /* ... */) -- severity列は存在しないのでエラー
VALUES (/* ... */);
