/* Some of The Most Important SQL Commands
 SELECT - extracts data from a database
 UPDATE - updates data in a database
 DELETE - deletes data from a database
 INSERT INTO - inserts new data into a database
 CREATE DATABASE - creates a new database
 ALTER DATABASE - modifies a database
 CREATE TABLE - creates a new table
 ALTER TABLE - modifies a table
 DROP TABLE - deletes a table
 CREATE INDEX - creates an index (search key)
 DROP INDEX - deletes an index */


SELECT * FROM Customers
SELECT CustomerName, City FROM Customers
SELECT DISTINCT City FROM Customers
SELECT * FROM Customers WHERE Country = 'Mexico';
SELECT * FROM Customers WHERE CustomerID = 1;

/*WHERE = <>/!= < > >= <= BETWEEN LIKE IN*/
/* AND OR */

SELECT * FROM Customers WHERE (City = 'Berlin' OR City = 'Munchen') AND Country = 'Germany';
SELECT * FROM Customers WHERE City = 'Berlin' ORDER BY Country ASC, CustomerName DESC;
INSERT INTO Customers (CustomerName, Country) VALUES ('Cardinal', 'Belgium');
UPDATE Customers SET ContactName = 'Alfred', City = 'Hamburg' WHERE CustomerName = 'Manfried';
UPDATE Customers SET ContactName = 'Alfred', City = 'Hamburg';
DELETE FROM Customers WHERE CustomerName = 'Vorner' AND ContactName = 'This';
DELETE FROM Customers;
DELETE * FROM Customers;
SELECT TOP 2 * FROM Customers;

/* SELECT * FROM PERSONS LIMIT 5; //MySQL */

SELECT TOP 50 PERCENT * FROM Customers;
SELECT * FROM Customers WHERE Country LIKE '%land%';
SELECT * FROM Customers WHERE Country NOT LIKE '%land%';

/* _ % [a-c] [^abc]/[!abc] */

SELECT * FROM Customers WHERE City LIKE '_erlin';
SELECT * FROM Customers WHERE City LIKE '[bsp]%';
SELECT * FROM Customers WHERE City IN ('Paris', 'London');
SELECT * FROM Customers WHERE Price NOT BETWEEN 10 AND 20;
SELECT * FROM Customers WHERE (Price BETWEEN 0 AND 10) AND NOT CategoryID IN (1, 2, 3);
SELECT * FROM Orders WHERE OrderDate BETWEEN #07/04/1996# AND #07/09/1996#;

SELECT CustomerName AS Customer, ContactName AS [Contact Person] FROM Customers;
SELECT CustomerName, Adress + ', '+ City +', '+ PostalCode +', '+ Country AS Address FROM Customers;
SELECT o.OrderID, o.OrderDate, c.CustomerName FROM Customers AS c, Orders AS o WHERE c.CustomerName = "Around the Horn" AND c.CustomerID = o.CustomerID;
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName FROM Customers, Orders WHERE Customers.CustomerName = "Around the Horn" AND Customers.CustomerID = Orders.CustomerID;

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
/* INNER JOIN (JOIN) LEFT JOIN RIGHT JOIN FULL JOIN */
SELECT Customers.CustomerName, Orders.OrderID FROM Customers LEFT JOIN Orders ON Orders.CustomerID = Customers.CustomerID ORDER BY Customers.CustomerName;
SELECT Orders.OrderID, Employees.FirstName FROM Orders RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID ORDER BY Orders.OrderID;
SELECT Customers.CustomerName, Orders.OrderID FROM Customers FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID ORDER BY Customers.CustomerName;

SELECT City FROM Customers UNION SELECT City FROM Suppliers ORDER BY City;
SELECT City FROM Customers UNION ALL SELECT City FROM Suppliers ORDER BY City;
SELECT City FROM Customers WHERE Country = 'Germany' UNION SELECT City FROM Suppliers WHERE Country = 'Germany' ORDER BY City;

SELECT * INTO CustomersBackup FROM Customers;
SELECT * INTO CustomersBackup IN 'file.mdb' FROM Customers;
SELECT * INTO CustomersBackup IN 'file.mdb' FROM Customers WHERE Country = 'Germany';
SELECT * INTO newemptytablewithschema FROM tablewithdata WHERE 1=0;
SELECT Customers.CustomerName, Orders.OrderID INTO Backup FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

INSERT INTO Table2 SELECT * FROM Table1;
INSERT INTO Customers (CustomerName, Country) SELECT SupplierName, Country FROM Suppliers;

CREATE DATABASE newdb;
USE newdb;

CREATE TABLE Persons (
	PersonID Int,
	LastName Varchar(255),
	City Varchar(255)
);
/* PRIMARY KEY (NOT NULL, UNIQUE), FOREIGN KEY, CHECK, DEFAULT */

CREATE TABLE Persons (
	PersonID Int,
	LastName Varchar(255) NOT NULL,
	City Varchar(255),
	UNIQUE (PersonID)
);
ALTER TABLE Persons ADD CONSTRAINT uc_PersonID UNIQUE (PersonID, LastName)
ALTER TABLE Persons ADD UNIQUE (PersonID)
ALTER TABLE Persons DROP INDEX uc_PersonID

CREATE TABLE Persons (
	PersonID Int,
	LastName Varchar(255) NOT NULL,
	City Varchar(255),
	PRIMARY KEY (PersonID)
);
ALTER TABLE Persons ADD CONSTRAINT pk_PersonID PRIMARY KEY (PersonID, LastName)
ALTER TABLE Persons ADD PRIMARY KEY (PersonID)
ALTER TABLE Persons DROP PRIMARY KEY

CREATE TABLE Orders (
	O_ID Int NOT NULL,
	P_ID Int,
	City Varchar(255),
	PRIMARY KEY (O_ID),
	FOREIGN KEY (P_ID) REFERENCES Persons (P_ID)
);
CREATE TABLE Orders (
	O_ID Int NOT NULL,
	P_ID Int,
	City Varchar(255),
	PRIMARY KEY (O_ID),
	CONSTRAINT fk_PerOrders FOREIGN KEY (P_ID)
	REFERENCES Persons (P_ID)
);
ALTER TABLE Orders ADD CONSTRAINT fk_PerOrders FOREIGN KEY (P_ID) REFERENCES Persons (P_ID)
ALTER TABLE Orders ADD FOREIGN KEY (P_ID) REFERENCES Persons (P_ID)
ALTER TABLE Orders DROP FOREIGN KEY fk_PerOrders

CREATE TABLE Persons (
	PersonID Int,
	LastName Varchar(255) NOT NULL,
	City Varchar(255),
	CHECK (PersonID > 0)
);
ALTER TABLE Persons ADD CONSTRAINT chk_Person CHECK (PersonID > 0 AND LastName = 'Sand')
ALTER TABLE Persons ADD CHECK (PersonID > 0)
ALTER TABLE Orders DROP CHECK chk_Person

CREATE TABLE Persons (
	PersonID Int,
	LastName Varchar(255) NOT NULL,
	City Varchar(255) DEFAULT 'Here'
);
CREATE TABLE Persons (
	PersonID Int,
	LastName Varchar(255) NOT NULL,
	OrderDate Date DEFAULT GETDATE()
);
ALTER TABLE Persons ALTER City SET DEFAULT 'Here'
ALTER TABLE Persons ALTER City DROP DEFAULT

CREATE UNIQUE INDEX index_name ON table_name (column_name)
CREATE INDEX index_name ON table_name (column_name)
ALTER TABLE table_name DROP INDEX index_name

DROP TABLE table_name
DROP DATABASE db
TRUNCATE TABLE table_name

ALTER TABLE Persons ADD City Varchar(20)
ALTER TABLE Persons DROP COLUMN City
ALTER TABLE Persons MODIFY COLUMN City Varchar(50)
ALTER TABLE Persons ALTER DateOfBirth year
ALTER TABLE Persons DROP COLUMN DateOfBirth

CREATE TABLE Persons (
	PersonID Int AUTO_INCREMENT,
	LastName Varchar(255) NOT NULL,
	OrderDate Date DEFAULT GETDATE()
);
ALTER TABLE Persons INCREMENT_AUTO = 100
INSERT INTO Persons (FirstName, LastName) VALUES ('Lars', 'Monsen')

CREATE VIEW [product list] AS SELECT ProductID, ProductName FROM Products WHERE Discontinued = No
SELECT * FROM [product list]
CREATE VIEW [product average price] AS SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)
CREATE OR REPLACE VIEW [product list] AS SELECT ProductName, Category FROM Products WHERE Price = 10
DROP VIEW [list name]

SELECT * FROM Orders WHERE OrderDate = '2008-11-11'
/* DATE - format YYYY-MM-DD
 DATETIME - format: YYYY-MM-DD HH:MI:SS
 TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
 YEAR - format YYYY or YY */
/* NOW() CURDATE() CURTIME() DATE() EXTRACT() DATE_ADD() DATE_SUB() DATEDIFF() DATE_FORMAT() */

SELECT LastName, FirstName FROM Persons WHERE Address IS NULL
SELECT LastName, FirstName FROM Persons WHERE Address IS NOT NULL

SELECT ProductName, UnitPrice*(UnitsInStock + UnitsOnOrder) FROM Products
SELECT ProductName, UnitPrice*(UnitsInStock + IFNULL(UnitsOnOrder, 0)) FROM Products
SELECT ProductName, UnitPrice*(UnitsInStock + COALESCE(UnitsOnOrder, 0)) FROM Products

CHARACTER(n)
VARCHAR(n)/CHARACTER VARYING(n)
BINARY(n)
BOOLEAN
VARBINARY(n)/BINARY VARYING(n)
INTEGER(p)
SMALLINT
INTEGER
BIGINT
DECIMAL(p, s)
NUMERIC(p, s)
FLOAT(p)
REAL
FLOAT
DOUBLE PRECISION
DATE
TIME
TIMESTAMP
INTERVAL
ARRAY
MULTISET
XML

Int/Integer
Float
Char
Varchar
Blob/Text

Text types:
CHAR(size)
VARCHAR(size)
TINYTEXT
TEXT
BLOB (Binary Large OBjects)
MEDIUMTEXT
MEDIUMBLOB
LONGTEXT
LONGBLOB
ENUM(x, y, z, etc.)
ENUM('X','Y','Z')
SET (ENUM)

Number types:
TINYINT(size)
SMALLINT(size)
MEDIUMINT(size)
INT(size)
UNSIGNED INT(size)
BIGINT(size)
FLOAT(size,d)
DOUBLE(size,d)
DECIMAL(size,d)

Date types:
DATE()
DATETIME()
TIMESTAMP()
TIME()
YEAR()

AVG()
COUNT()
FIRST()
LAST()
MAX()
MIN()
SUM()

UCASE()
LCASE()
MID()
LEN()
ROUND()
NOW()
FORMAT()

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID GROUP BY ShipperName;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders FROM (Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID) GROUP BY LastName HAVING COUNT(Orders.OrderID) > 10;
