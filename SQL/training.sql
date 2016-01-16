SELECT * FROM table_name;
SELECT ColumnName1, ColumnName2 FROM table_name;
SELECT DISTINCT ColumnName3 FROM table_name;
SELECT * FROM table_name WHERE ColumnName4 = 'search_tag';
/* = <> > < >= <= BETWEEN 0 AND 1 LIKE 'a%' IN (1, 2, 3, 4) */
SELECT * FROM table_name WHERE ColumnName5 = 'tag_name' AND ColumnName6 = 'tag_name2';
SELECT * FROM table_name WHERE ColumnName5 = 'tag' OR ColumnName5 = 'name';
SELECT * FROM table_name WHERE ColumnName5 = 'tag' AND (ColumnName6 = 'here' OR ColumnName6 = 'there');
SELECT * FROM table_name ORDER BY ColumnName7;
SELECT * FROM table_name ORDER BY ColumnName8 DESC;
SELECT * FROM table_name ORDER BY ColumnName7, ColumnName8;
SELECT * FROM table_name ORDER BY ColumnName7 ASC, ColumnName8 DESC;
INSERT INTO table_name VALUES ('name', '1', 'this');
INSERT INTO table_name (ColumName1, ColumnName2, ColumnName3) VALUES ('first', '2', 'that');
INSERT INTO table_name (ColumnName2) VALUES ('greetings');
UPDATE table_name SET ColumName1 = 'this', ColumnName2 = 'that' WHERE ColumnName3 = 'update';
UPDATE table_name SET ColumName3 = 'change'; /* updates all records in the column */
DELETE FROM table_name WHERE ColumName1 = 'this';
DELETE FROM table_name; /* all */
DELETE * FROM table_name; /* all */
SELECT TOP 5 * FROM table_name;
SELECT TOP 20 PERCENT * FROM table_name;
SELECT * FROM table_name LIMIT 10;
SELECT * FROM table_name WHERE ColumnName1 LIKE '%th%';
SELECT * FROM table_name WHERE ColumnName2 NOT LIKE '%s';
SELECT * FROM table_name WHERE ColumnName3 LIKE '_alue';
SELECT * FROM table_name WHERE ColumnName4 LIKE 'co_t_nue';
SELECT * FROM table_name WHERE ColumnName1 LIKE '[abc]%';
SELECT * FROM table_name WHERE ColumnName2 LIKE '[a-f]%';
SELECT * FROM table_name WHERE ColumnName3 LIKE '[!abc]%';
SELECT * FROM table_name WHERE ColumnName3 NOT LIKE '[abc]%';
SELECT * FROM table_name WHERE ColumnName4 IN (1, 2, 3, 4);
SELECT * FROM table_name WHERE ColumnName4 IN ('query', 'word', 'elf', 'ribbon');
SELECT * FROM table_name WHERE ColumnName4 BETWEEN 10 AND 20;
SELECT * FROM table_name WHERE (ColumName4 BETWEEN 'C' AND 'G') AND NOT ColumnNameID IN (1, 2, 3);
SELECT * FROM table_name WHERE ColumnName5 NOT BETWEEN 0 AND 99;
SELECT * FROM table_name WHERE ColumnName6 BETWEEN #01/01/1999# AND #01/01/2000#;
SELECT ColumnName1 AS CN1, ColumnName2 AS [CN 2] FROM table_name;
SELECT ColumnName1, ColumnName2 + ', ' + ColumnName3 + ', ' + ColumnName4 AS CNs FROM table_name;
SELECT a.ColumnName1, a.ColumnName2, b.ColumnName1 FROM alpha_table_name AS a, beta_table_name AS b WHERE b.ColumnName1 = a.ColumnName1;
SELECT alfa_table_name.ColumnID, beta_table_name.ColumnName1, beta_table_name.ColumnName2 FROM alfa_table_name INNER JOIN beta_table_name ON alfa_table_name.ColumnID = beta_table_name.ColumnID; /* INNER JOIN = JOIN */
SELECT alfa_table_name.ColumnID, beta_table_name.ColumnName1, beta_table_name.ColumnName2 FROM alfa_table_name LEFT JOIN beta_table_name ON alfa_table_name.ColumnID = beta_table_name.ColumnID ORDER BY alfa_table_name.ColumnID; /* LEFT JOIN = LEFT OUTER JOIN */
SELECT alfa_table_name.ColumnID, beta_table_name.ColumnName2 FROM alfa_table_name RIGHT JOIN beta_table_name ON alfa_table_name.ColumnID = beta_table_name.ColumnID ORDER BY alfa_table_name.ColumnID; /* RIGHT JOIN = RIGHT OUTER JOIN */
SELECT alfa_table_name.ColumnID, beta_table_name.ColumnName1 FROM alfa_table_name FULL OUTER JOIN beta_table_name ON alfa_table_name.ColumnID = beta_table_name.ColumnID ORDER BY alfa_table_name.ColumnName1;
SELECT ColumnName1 FROM alfa_table_name UNION SELECT ColumnName2 FROM beta_table_name ORDER BY ColumnName1;
SELECT ColumnName1 FROM alfa_table_name UNION ALL SELECT ColumnName2 FROM beta_table_name ORDER BY ColumnName2;
SELECT ColumnName1, ColumnName2 FROM alfa_table_name WHERE ColumnName1 = 'value' UNION ALL SELECT ColumnName2 FROM beta_table_name WHERE ColumnName2 = 'value' ORDER BY ColumnName1;
