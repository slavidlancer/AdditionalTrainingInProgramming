ALTER TABLE table_name ADD UNIQUE (ColumnName1);
ALTER TABLE table_name ADD CONSTRAINT uc_ColumnName1 UNIQUE (ColumnName1);
ALTER TABLE table_name DROP CONSTRAINT UNIQUE;
ALTER TABLE table_name DROP CONSTRAINT uc_ColumnName1;