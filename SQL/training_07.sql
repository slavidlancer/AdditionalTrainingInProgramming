CREATE VIEW [Current List] AS SELECT ColumnName1ID, ColumnName2 FROM table_name WHERE ColumnName3 = No;
SELECT * FROM [Current List];
CREATE VIEW [List 1] AS SELECT ColumnName2, ColumnName3 FROM table_name WHERE ColumnName4 > (SELECT AVG(ColumnName2) FROM Products);
SELECT * FROM [List 2];
CREATE OR REPLACE VIEW [Current List] AS SELECT ColumnName1ID, ColumnName2, ColumnName3 FROM table_name WHERE ColumnName4 = No;
DROP VIEW [Current List];
SELECT * FROM Orders WHERE OrderDate = '2008-11-11';
SELECT ColumnName1, ColumnName2 FROM table_name WHERE ColumnName2 IS NULL;
SELECT ColumnName1, ColumnName2 FROM table_name WHERE ColumnName2 IS NOT NULL;
/* 
    AVG() - Returns the average value
    COUNT() - Returns the number of rows
    FIRST() - Returns the first value
    LAST() - Returns the last value
    MAX() - Returns the largest value
    MIN() - Returns the smallest value
    SUM() - Returns the sum
*/
/*
    UCASE() - Converts a field to upper case
    LCASE() - Converts a field to lower case
    MID() - Extract characters from a text field
    LEN() - Returns the length of a text field
    ROUND() - Rounds a numeric field to the number of decimals specified
    NOW() - Returns the current system date and time
    FORMAT() - Formats how a field is to be displayed
*/
