-- MySQLのLOAD_FILE関数によるファイルの読み込みと、BLOB列への格納
UPDATE Screenshots
SET screenshot_image = LOAD_FILE('images/screenshot1234-1.jpg')
WHERE bug_id = 1234 AND image_id = 1;
