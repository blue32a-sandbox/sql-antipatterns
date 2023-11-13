-- データベースが無効なデータ入力を拒絶できるのが理想的
INSERT INTO Bugs (status) VALUES ('NEW'); -- OK

INSERT INTO Bugs (status) VALUES ('BANANA'); -- エラー
