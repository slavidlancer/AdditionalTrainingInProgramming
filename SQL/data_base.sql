CREATE DATABASE DB;

USE DB;

DROP TABLE IF EXISTS tablica;

SET character_set_client = utf8;

CREATE TABLE tablica (
	kolona1 INT(4) NOT NULL AUTO_INCREMENT,
	kolona2 TYNIINT NOT NULL,
	kolona3 CHAR(4) NOT NULL,
	kolona4 VARCHAR(15) default NULL,
	kolona5 FLOAT(4,2),
	kolona6 INT(4) unsigned NOT NULL,
	kolona7 DATE() default GETDATE(),
	PRIMARY KEY (kolona1)
);

SET character_set_client = @saved_cs_client;

ALTER TABLE tablica AUTO_INCREMENT = 1;

CREATE INDEX ID ON tablica (kolona1);

INSERT INTO tablica (kolona2, kolona3, kolona4) VALUES (15, "abcd", "simvoli_1234567890"), (255, "wxyz", "string_0123456789");

SELECT DISTINCT FROM tablica WHERE kolona1>15 GROUP BY kolona1;

SELECT * FROM tablica WHERE kolona5 BETWEEN 2.50 AND 3.50 ORDER BY kolona1 DESC;

SELECT * INTO nova_tablica FROM tablica;

SELECT DISTINCT FROM tablica GROUP BY kolona1 HAVING SUM(kolona5)<1;

SELECT AVG(kolona2) AS kolona0 FROM tablica;

SELECT COUNT(*) AS kolona0 FROM tablica (kolona5);

SELECT MIN(kolona5) AS kolona0 FROM tablica;

SELECT MID(",1,4) AS kolona0 FROM tablica;

COUNT();
SUM();
AVG();
MIN();
MAX();
JOIN;
query A union query B;

ALTER TABLE tablica ADD kolona8 INT(5);

ALTER TABLE tablica MODIFY kolona6 INT(4) NOT NULL;

ALTER TABLE tablica DROP COLUMN kolona0;

DROP TABLE tablica;

INSERT INTO tablica (kolona4) SELECT DISTINCT FROM tablica WHERE LIKE '%simvoli';

DELETE FROM tablica WHERE kolona5 IS NULL;

UPDATE tablica SET kolona4 = NULL WHERE kolona4 IS NOT NULL;

TRUNCATE TABLE tablica;

DROP DATABASE DB;
