SELECT AVG(column_name) FROM table_name;
SELECT AVG(ColumnName2) AS Column FROM table_name;
SELECT ColumnName1, ColumnName2 FROM table_name WHERE ColumnName2 > (SELECT AVG(ColumnName3) FROM table_name);
SELECT COUNT(*) AS ColumnName2 FROM table_name;
SELECT COUNT(DISTINCT column_name) AS Column FROM table_name;
SELECT table_name.ColumnName2, COUNT(other_table_name.ColumnName1) AS Name FROM table_name LEFT JOIN other_table_name ON other_table_name.ColumnName1 = table_name.ColumnName1 GROUP BY ColumnName1;
SELECT table_name.ColumnName2, COUNT(other_table_name.ColumnName1) AS Name FROM (table_name INNER JOIN other_table_name ON other_table_name.ColumnName1 = table_name.ColumnName1) GROUP BY LastName HAVING COUNT(table_name.ColumnName2) > 10;
SELECT NOW() FROM table_name;
SELECT ColumnName1, ColumnName2, FORMAT(Now(),'YYYY-MM-DD') AS Name FROM table_name;
