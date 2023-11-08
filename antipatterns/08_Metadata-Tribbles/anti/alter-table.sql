-- バグ修正にかかった時間を記録するための列を追加
ALTER TABLE Bugs_2010 ADD COLUMN hours NUMERIC(9,2);
