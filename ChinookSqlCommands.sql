DROP TABLE IF EXISTS Person;
CREATE TABLE Person(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT,
  Age INTEGER,
  Height DECIMAL,
  City TEXT,
  FavoriteColor TEXT);
  
  INSERT INTO Person
  (Name, Age, Height, City, FavoriteColor)
  VALUES
  ('Jemila',23,5.3,'Oakland','biege'),
  ('Madi',24,5.9,'Here', 'Black'),
  ('Rando',25,6, 'Here', 'Green'),
  ('Rando2',25,6.5, 'Here', 'Blue'),
  ('John',25,6, 'Here', 'Pink');
  
  SELECT * FROM Person;
-- 3
  SELECT * FROM Person
  ORDER BY Height DESC;
--   4
  SELECT * FROM Person
  ORDER BY Height ASC;
--   5
  SELECT * FROM Person
  ORDER BY Age DESC;
--   6
  SELECT * FROM Person
  WHERE Age>20;
--   7
 SELECT * FROM Person
  WHERE Age=18;
--   8
  SELECT * FROM Person
  WHERE Age<20 OR Age>30;
--   9
  SELECT * FROM Person
  WHERE Age<>27;
--   10
  SELECT * FROM Person
  WHERE FavoriteColor !='red';
--   11
SELECT * FROM Person
  WHERE FavoriteColor !='red' AND FavoriteColor !='Blue';
--   12
SELECT * FROM Person
WHERE FavoriteColor ='Orange' OR FavoriteColor ='Green';
-- 13
SELECT * FROM Person
WHERE FavoriteColor IN ('orange','green', 'blue');
-- 14
SELECT * FROM Person 
WHERE FavoriteColor IN ( "yellow", "purple" );

-- Table-Orders 1
DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders(	
  PersonID INTEGER,
  ProductName TEXT,
  ProductPrice DECIMAL,
  Quantity INTEGER
);
INSERT INTO Orders
(PersonID, ProductName, ProductPrice, Quantity)
VALUES
(1, 'Sugar', 10, 2),
(2, 'Cookies', 3, 1),
(3, 'Jamaica', 2.00, 5),
(4, 'Bun', 1.50, 2),
(5, "Cheese", 2.00, 2);
-- 3
SELECT * FROM Orders;
-- 4
SELECT SUM(Quantity) FROM Orders;
-- 5 
SELECT SUM(ProductPrice*Quantity) FROM Orders;
-- 6 
SELECT SUM(ProductPrice*Quantity) FROM Orders WHERE PersonID=1;

-- Table-Artist 1
INSERT INTO Artist (Name) VALUES ('JEMILA');
INSERT INTO Artist (Name) VALUES ('Bob');
INSERT INTO Artist (Name) VALUES ('MADi');
SELECT * FROM Artist
-- 2
SELECT * FROM Artist ORDER BY Name DESC LIMIT 10;
-- 3
SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;
-- 4
SELECT * FROM Artist WHERE Name LIKE 'Black%';
-- 5
SELECT * FROM Artist WHERE Name LIKE '%Black%';
-- Table-Employee 1
SELECT FirstName, LastName FROM Employee
WHERE City="Calgary";
-- 2
SELECT FirstName, LastName, Birthdate FROM Employee
WHERE Birthdate=(SELECT Birthdate FROM Employee ORDER BY Birthdate DESC LIMIT 1);
-- 3
SELECT FirstName, LastName, Birthdate FROM Employee
WHERE Birthdate=(SELECT Birthdate FROM Employee ORDER BY Birthdate ASC LIMIT 1);
-- 4
SELECT * FROM Employee
WHERE ReportsTo=2;
-- 5
SELECT Count(*) FROM Employee
WHERE City="Lethbridge";

-- Table-Invoice
SELECT COUNT(*) FROM Invoice
WHERE BillingCountry="USA";
-- 2
SELECT Max(Total) FROM Invoice;
-- 3
SELECT Min(Total) FROM Invoice;
-- 4
SELECT * FROM Invoice
WHERE Total>5;
-- 5
SELECT COUNT(*) FROM Invoice
WHERE Total<5;
-- 6
SELECT COUNT(*) FROM Invoice
WHERE BillingState IN ("CA", "TX", "AZ");
-- 7
SELECT Avg(Total) FROM Invoice;
-- 8
SELECT SUM(Total) FROM Invoice;