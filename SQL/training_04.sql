ALTER TABLE table_name ADD UNIQUE (ColumnName1);
ALTER TABLE table_name ADD CONSTRAINT uc_ColumnName1 UNIQUE (ColumnName1);
ALTER TABLE table_name DROP CONSTRAINT UNIQUE;
ALTER TABLE table_name DROP CONSTRAINT uc_ColumnName1;
CREATE TABLE table_name (
    ColumnName1 int NOT NULL PRIMARY KEY,
    ColumnName2 varchar(255)
    ColumnName3 varchar(255)
    ColumnName4 float
);
ALTER TABLE table_name ADD PRIMARY KEY (ColumnName1);
ALTER TABLE table_name ADD CONSTRAINT pk_ID PRIMARY KEY (ColumnName1, ColumnName2);
ALTER TABLE table_name DROP PRIMARY KEY;
ALTER TABLE table_name DROP CONSTRAINT pk_ID;
CREATE TABLE other_table_name (
    ColumnName1 int NOT NULL PRIMARY KEY,
    ColumnName2 int NOT NULL,
    ColumnName3 int FOREIGN KEY REFERENCES table_name(ColumnName1)
);
ALTER TABLE other_table_name ADD FOREIGN KEY (ColumnName3) REFERENCES table_name(ColumnName1);
