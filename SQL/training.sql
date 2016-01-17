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
