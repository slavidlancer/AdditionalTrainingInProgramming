ALTER TABLE other_table_name DROP FOREIGN KEY fk_PerOrders
ALTER TABLE other_table_name DROP CONSTRAINT fk_PerOrders
CREATE TABLE table_name (
    ColumnName1Id int NOT NULL CHECK (ColumnName1Id>0),
    ColumnName2 varchar(255) NOT NULL,
    ColumnName3 varchar(255),
    ColumnName4 varchar(255),
    ColumnName5 varchar(255)
);
ALTER TABLE table_name ADD CONSTRAINT chk_ColumnName1 CHECK (ColumnName1Id > 0 AND ColumnName2 = 'defauly')
ALTER TABLE table_name DROP CONSTRAINT chk_ColumnName1
CREATE TABLE table_name (
    ColumnName1Id int NOT NULL,
    ColumnName2 varchar(255) NOT NULL,
    ColumnName3 varchar(255),
    ColumnName4 varchar(255),
    ColumnName5 varchar(255) DEFAULT 'Sandnes'
);
ALTER TABLE table_name ALTER COLUMN ColumnName3 SET DEFAULT 'default'
ALTER TABLE table_name ALTER COLUMN ColumnName3 DROP DEFAULT
