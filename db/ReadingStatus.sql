CREATE TABLE 読書状況 (読書状況ID INTEGER  NOT NULL AUTO_INCREMENT, 
                       タイトル VARCHAR(100)  NOT NULL,
                       作者 VARCHAR(100) NOT NULL,
                       読書状況 VARCHAR(100)  NOT NULL,
                       
                       PRIMARY KEY (読書状況ID)
                       );


INSERT INTO 読書状況(タイトル, 作者, 読書状況)
     VALUES ("容疑者Xの献身", "東野圭吾", "感想を書いた");
     
INSERT INTO 読書状況(タイトル, 作者, 読書状況)
     VALUES ("わかったさんのクッキー", "寺村輝夫", "読み終わった");

INSERT INTO 読書状況(タイトル, 作者, 読書状況)
     VALUES ("星の王子さま", "アントワーヌ・ド・サン＝テグジュペリ", "感想を書いた");
     
INSERT INTO 読書状況(タイトル, 作者, 読書状況)
     VALUES ("夜明けのすべて", "瀬尾まいこ", "読みたい");
     
     