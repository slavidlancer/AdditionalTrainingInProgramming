SELECT alfa_table_name.ColumnID, beta_table_name.ColumnName1, beta_table_name.ColumnName2 FROM alfa_table_name INNER JOIN beta_table_name ON alfa_table_name.ColumnID = beta_table_name.ColumnID; /* INNER JOIN = JOIN */
SELECT alfa_table_name.ColumnID, beta_table_name.ColumnName1, beta_table_name.ColumnName2 FROM alfa_table_name LEFT JOIN beta_table_name ON alfa_table_name.ColumnID = beta_table_name.ColumnID ORDER BY alfa_table_name.ColumnID; /* LEFT JOIN = LEFT OUTER JOIN */
SELECT alfa_table_name.ColumnID, beta_table_name.ColumnName2 FROM alfa_table_name RIGHT JOIN beta_table_name ON alfa_table_name.ColumnID = beta_table_name.ColumnID ORDER BY alfa_table_name.ColumnID; /* RIGHT JOIN = RIGHT OUTER JOIN */
SELECT alfa_table_name.ColumnID, beta_table_name.ColumnName1 FROM alfa_table_name FULL OUTER JOIN beta_table_name ON alfa_table_name.ColumnID = beta_table_name.ColumnID ORDER BY alfa_table_name.ColumnName1;
SELECT ColumnName1 FROM alfa_table_name UNION SELECT ColumnName2 FROM beta_table_name ORDER BY ColumnName1;
SELECT ColumnName1 FROM alfa_table_name UNION ALL SELECT ColumnName2 FROM beta_table_name ORDER BY ColumnName2;
SELECT ColumnName1, ColumnName2 FROM alfa_table_name WHERE ColumnName1 = 'value' UNION ALL SELECT ColumnName2 FROM beta_table_name WHERE ColumnName2 = 'value' ORDER BY ColumnName1;
SELECT * INTO new_table_name FROM table_name;
SELECT * INTO new_table_name IN 'file.db' FROM table_name;
SELECT ColumnName1, ColumnName2 INTO new_table_name FROM table_name;
SELECT ColumnName1, ColumnName2 INTO new_table_name FROM table_name WHERE CN1 = 'value';
SELECT table_name_02.ColumnName1, table_name.ColumnName2 INTO new_table_name FROM table_name_02 LEFT JOIN table_name ON table_name_02.ID = table_name.ID;
SELECT * INTO new_table_name FROM table_name WHERE 1 = 0; /* no result from the query => empty db with this schema */
INSERT INTO new_table_name (ColumnName1, ColumnName2) SELECT ColumnName1, ColumnName2 FROM table_name;
INSERT INTO new_table_name (ColumnName1, ColumnName2) SELECT ColumnName1, ColumnName2 FROM table_name WHERE ColumnName1 = 'this';
CREATE DATABASE db_name;
CREATE TABLE table_name (
    ColumnName1 int NOT NULL UNIQUE,
    ColumnName2 varchar(255)
    ColumnName3 varchar(255)
    ColumnName4 
);
