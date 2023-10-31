-- 行を挿入する前に、親の行の存在を確認する必要がある
SELECT account_id FROM Accounts WHERE account_id = 1;

INSERT INTO Bugs (reported_by) VALUES (1);
