-- Create 1.table on Products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Category VARCHAR(100),
    Price DECIMAL(10,2)
);
--insert into values in Product table
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(101, '1969 Harley Davidson Ultimate Chopper', 'Appliances', 51.14),
(102, '1952 Alpine Renault 1300', 'Toys', 387.26),
(103, '1996 Moto Guzzi 1100i', 'Electronics', 642.20),
(104, '2003 Harley-Davidson Eagle Drag Bike', 'Appliances', 711.64),
(105, '1972 Alfa Romeo GTA', 'Clothing', 63.45),
(106, '2001 Ferrari Enzo', 'Appliances', 220.76),
(107, '1968 Ford Mustang', 'Electronics', 74.41),
(108, '2001 Ferrari Enzo', 'Electronics', 174.55),
(109, '1940 Ford Pickup Truck', 'Clothing', 474.73),
(110, '1969 Dodge Charger', 'Clothing', 804.93),
(111, '1957 Chevy Pickup', 'Appliances', 910.25),
(112, '1966 Shelby Cobra 427 S/C', 'Sports', 151.64),
(113, '1969 Corvair Monza', 'Electronics', 426.56
(114, '1948 Porsche Type 356 Roadster', 'Clothing', 468.18),
(115, '1958 Setra Bus', 'Appliances', 541.55),
(116, '1936 Harley Davidson El Knucklehead', 'Appliances', 850.47),
(117, '1980’s GM Manhattan Express', 'Toys', 727.79),
(118, '1952 Citroen-15CV', 'Appliances', 487.65),
(119, '1961 Ford Thunderbird', 'Electronics', 498.79),
(120, '1958 Chevy Corvette Limited Edition', 'Appliances', 134.27);

select * from Products
-- Create 1.table on Salespersons
CREATE TABLE Salespersons (
    SalespersonID INT PRIMARY KEY,
    SalespersonName VARCHAR(255) NOT NULL,
    Region VARCHAR(100)
);
--insert into values in Salepersons table
INSERT INTO Salespersons (SalespersonID, SalespersonName, Region) VALUES
(501, 'Atelier graphique', 'West'),
(502, 'Signal Gift Stores', 'South'),
(503, 'Australian Collectors, Co.', 'East'),
(504, 'La Rochelle Gifts', 'West'),
(505, 'Baane Mini Imports', 'North'),
(506, 'Bulk Shipping', 'Central'),
(507, 'Mini Gifts Distributors Ltd.', 'South'),
(508, 'Oriental Collectables', 'East'),
(509, 'Gift Depot Inc.', 'Central'),
(510, 'Mit Vergnügen', 'North');

select * from Salespersons
-- Create 1.table on sales
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT NOT NULL REFERENCES Products(ProductID),
    QuantitySold INT,
    SaleDate DATE,
    SalespersonID INT NOT NULL REFERENCES Salespersons(SalespersonID)
);
--insert into values in Sales table
insert into Sales values (1,116,8,'2023-05-19',508);
INSERT INTO Sales (SaleID, ProductID, QuantitySold, SaleDate, SalespersonID) VALUES
(2, 116, 10, '2023-01-16', 508),
(3, 102, 8, '2023-08-29', 505),
(4, 106, 6, '2023-05-24', 505),
(5, 112, 6, '2023-07-23', 501),
(6, 102, 9, '2023-03-27', 504),
(7, 107, 7, '2023-09-07', 508),
(8, 107, 4, '2023-11-26', 501),
(9, 113, 7, '2023-11-27', 505),
(10, 115, 5, '2023-05-05', 508),
(11, 115, 3, '2023-02-26', 503),
(12, 108, 4, '2023-01-24', 501),
(13, 103, 1, '2023-10-25', 502),
(14, 118, 9, '2023-04-13', 501),
(15, 118, 7, '2023-04-30', 502),
(16, 114, 9, '2023-09-23', 509),
(17, 109, 6, '2023-03-18', 509),
(18, 105, 1, '2023-01-08', 509),
(19, 119, 9, '2023-08-11', 508),
(20, 115, 5, '2023-02-15', 506),
(21, 115, 5, '2023-08-12', 508),
(22, 101, 8, '2023-05-24', 502),
(23, 119, 2, '2023-08-15', 502),
(24, 113, 4, '2023-02-10', 503),
(25, 112, 3, '2023-10-29', 509),
(26, 108, 7, '2023-05-08', 510),
(27, 101, 9, '2023-01-19', 505),
(28, 102, 3, '2023-03-18', 509),
(29, 107, 4, '2023-03-15', 506),
(30, 103, 4, '2023-12-23', 503),
(31, 106, 4, '2023-02-17', 509),
(32, 107, 8, '2023-01-02', 508),
(33, 101, 9, '2023-10-05', 502),
(34, 113, 10, '2023-01-16', 502),
(35, 106, 7, '2023-06-20', 508),
(36, 101, 8, '2023-07-05', 507),
(37, 101, 8, '2023-03-20', 501),
(38, 109, 4, '2023-07-29', 509),
(39, 103, 7, '2023-04-27', 509),
(40, 103, 8, '2023-03-14', 507),
(41, 112, 7, '2023-10-24', 508),
(42, 109, 1, '2023-09-13', 508),
(43, 106, 1, '2023-10-31', 509),
(44, 120, 5, '2023-09-03', 503),
(45, 105, 2, '2023-07-31', 507),
(46, 111, 9, '2023-07-02', 506),
(47, 103, 6, '2023-11-17', 501),
(48, 120, 10, '2023-09-30', 507),
(49, 101, 5, '2023-06-23', 506),
(50, 108, 2, '2023-07-07', 505);
select * from Sales
--Insert sample data into each table (you can generate random data or use a dataset).
SELECT 'Products ->' AS table, COUNT(*) FROM Products
UNION ALL
SELECT 'Salespersons ->', COUNT(*) FROM Salespersons
UNION ALL
SELECT 'Sales (first 100) ->', COUNT(*) FROM Sales;

SELECT sp.Region, SUM(s.QuantitySold * p.Price) AS total_revenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
JOIN Salespersons sp ON s.SalespersonID = sp.SalespersonID
GROUP BY sp.Region
ORDER BY total_revenue DESC;

SELECT 
    p.ProductName,
    SUM(s.QuantitySold) AS TotalQuantitySold
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
GROUP BY 
    p.ProductName
ORDER BY 
    TotalQuantitySold DESC;
----1. Total sales per product
SELECT 
    p.ProductName,
    SUM(s.QuantitySold * p.Price) AS TotalSalesAmount
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
GROUP BY 
    p.ProductName, p.Price
ORDER BY 
    TotalSalesAmount DESC;
----2. Total sales by region
SELECT 
    sp.Region,
    SUM(s.QuantitySold * p.Price) AS TotalSalesAmount
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
JOIN 
    Salespersons sp ON s.SalespersonID = sp.SalespersonID
GROUP BY 
    sp.Region
ORDER BY 
    TotalSalesAmount DESC;
--3. Average sales per salesperso
SELECT 
    sp.SalespersonName,
    AVG(s.QuantitySold * p.Price) AS AverageSaleAmount
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
JOIN 
    Salespersons sp ON s.SalespersonID = sp.SalespersonID
GROUP BY 
    sp.SalespersonName
ORDER BY 
    AverageSaleAmount DESC;
	
	


	

	
