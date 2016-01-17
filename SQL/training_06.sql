CREATE INDEX index_name ON table_name (ColumnName1)
CREATE INDEX index_name ON table_name (ColumnName1, ColumnName2)
DROP INDEX table_name.index_name
ALTER TABLE table_name DROP INDEX index_name
DROP TABLE table_name
DROP DATABASE database_name
TRUNCATE TABLE table_name
ALTER TABLE table_name ALTER COLUMN column_name int
ALTER TABLE table_name ADD ColumnName2 date
ALTER TABLE table_name DROP COLUMN ColumnName2
CREATE TABLE table_name (
    ColumnName1ID int NOT NULL AUTO_INCREMENT,
    ColumnName2 varchar(255) NOT NULL,
    ColumnName3 varchar(255),
    PRIMARY KEY (ColumnName1ID)
);
CREATE TABLE table_name (
    ColumnName1ID int IDENTITY(1,1) PRIMARY KEY,
    ColumnName2 varchar(255) NOT NULL,
    ColumnName3 varchar(255),
);
