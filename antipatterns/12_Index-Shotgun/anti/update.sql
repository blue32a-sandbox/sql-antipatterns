-- bug_id列のインデックスが役に立つUPDATE
UPDATE Bugs SET status = 'FIXED' WHERE bug_id = 1234;
