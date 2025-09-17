                     
					 -- CREATE A DATABASE FOR AN IMAGINARY AGRIC FARM AND GIVE IT A NAME

DROP TABLE IF EXISTS DannyFarm;
CREATE TABLE Dannyfarm (
FarmID INT PRIMARY KEY,
CropType VARCHAR(100) NOT NULL,
Quantity DECIMAL(10,3) NOT NULL,
UnitPrice DECIMAL(10,3) NOT NULL,
TotalValue DECIMAL(15,3) NOT NULL,
HarvestSeason VARCHAR(20),
LivestockType VARCHAR(100),
ProductionStatus VARCHAR(50),
);


                             --QUESTION 2                 --CREATE A TABLE FOR IT'S PRODUCTS.

DROP TABLE IF EXISTS DannyFarmProducts;
CREATE TABLE DannyFarmProducts (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
ProductType VARCHAR(50) NOT NULL,
UnitPrice DECIMAL(10,3) NOT NULL,
QuantityAvailable INT NOT NULL,
ProductionFrequency VARCHAR(24) NOT NULL,
ShelveLife VARCHAR(15) NOT NULL,
SalesStatus VARCHAR(20)
);

SELECT*
FROM DannyFarmProducts

DROP TABLE IF EXISTS DannyFarmOrders;
CREATE TABLE DannyFarmOrders (
OrderID INT PRIMARY KEY,
ProdutID INT NOT NULL,
CustomerName VARCHAR(100) NOT NULL,
QunatityOdered INT NOT NULL,
Unitprice DECIMAL (10,3) NOT NULL,
TotalCost DECIMAL (15,3) NOT NULL,
OrderStatus VARCHAR(30),
Paymentmethod VARCHAR(40),
PaymentStatus VARCHAR(30) FOREIGN KEY (OrderID) REFERENCES DannyFarmOrders(OrderID)
);

                                          --QUESTION3      --CREATE A TABLE FOR IT'S ORDERSS. 
CREATE TABLE DannyFarmOrders (
OrderID INT PRIMARY KEY,
ProdutID INT NOT NULL,
CustomerName VARCHAR(100) NOT NULL,
QunatityOdered INT NOT NULL,
Unitprice DECIMAL (10,3) NOT NULL,
TotalCost DECIMAL (15,3) NOT NULL,
OrderStatus VARCHAR(30),
Paymentmethod VARCHAR(40),
PaymentStatus VARCHAR(30),
);

SELECT *
FROM Dannyfarm
SELECT*
FROM DannyFarmProducts
SELECT*
FROM DannyFarmOrders

             --ASSIGNMENT 2                      -- POPULATE THE DANNYFARMORDER WITH AT LEAST 7 ITEMS.


INSERT INTO DannyFarmOrders(OrderID, ProdutID, CustomerName, QunatityOdered, UnitPrice,TotalCost, OrderStatus, PaymentMethod, PaymentStatus)
VALUES
(4, 1, 'Alice Brown', 75, 2.30, 178.40, 'Pending', 'Online Payment', 'Pending'),
(5, 4, 'Mike Davis', 156, 0.70, 130.00, 'Shipped', 'Credit Card', 'Paid'),
(6, 3, 'Emily Dan', 60, 1.20, 60.00, 'Delivered','Cash', 'Paaid'),
(7, 3, 'Ray David', 40, 3.00, 80.00, 'Pending', 'Online payment','Paid'),
(8, 4, 'Sophia Peter', 100, 2.00,200.00, 'Shipped', 'Credit Card', 'paid'),
(9, 1, 'kim Olivia', 35, 2.50, 100.00, 'Delivered', 'Cash', 'Paid'),
(10, 5, 'Hall Jide', 198, 1.56, 300.00, 'Pending', 'Online payment', 'Pending');

SELECT*
FROM DannyFarmOrders

                                      --ASSINMENT 2            -- POPULATE THE DANNYFARMPRODUCT WITH AT LEAST 7 ITEMS.

INSERT INTO DannyFarmProducts(ProductID, ProductName, ProductType, UnitPrice, QuantityAvailable, ProductionFrequency, ShelveLife, SalesStatus)
VALUES
	(4, 'FreshTomatoes', 'Crop', 1.50, '900', '30-08-2025', '30-09-2025', 'Available'),
	(5, 'Chicken Breast', 'Livestock', 5.00, 300, '30-08-2025', '30-09-2025', 'Available'),
	(6, 'Yogurt', 'Dairy', 2.00, 400, '30-08-2025', '30-09-2025', 'Available'),
	(7, 'Goat Tongue', 'Livestock', 120, 50, '30-08-2025', '30-09-2025', 'Available'),
	(8, 'Cow-Leg', 'LiveStock', 150, 30,'30-08-3035', '30-08-2025', 'Available'),
	(9, 'Cow-Tail', 'Livestock', 150, 30, '30-08-2025', '30-08-2025', 'Available'),
	(10, 'Cow-Milk', 'LiveStock', 8.00, 400, '30-08-2025', '30-12-2025', 'Available');


	      --ASSINMENT 2            -- POPULATE THE DANNYFARM WITH AT LEAST 7 ITEMS.

	
INSERT INTO  DannyFarm(FarmID, CropType, Quantity, UnitPrice, TotalValue, HarvestSeason, LiveStockType, ProductionStatus)
VALUES
(4, 'Corn', 3000, 2.1, 6012, 'Summer', 'Goat', 'Finihed'),
(5, 'Cassava', 7002, 5.6, 25000, 'Summer', 'Chicken', 'Started'),
(6, 'Groundnut', 50000, 2.0, 4000, 'Rainyseason', 'Turckey', 'In progress'),
(7, 'Melon', 70, 4.5, 9000, 'Rainyseason', 'Cow', 'Available'),
(8, 'Beans', 18, 20.7, 80000, 'Summer', 'Ram', 'Available'),
(9, 'Rice', 21, 30.1, 81000, 'Summer', 'Dogs', 'Available'),
(10, 'Water Mellon', 200, 3.2, 43, 'Rainyseason', 'Bull', 'Available');

SELECT *
FROM Dannyfarm
SELECT *
FROM DannyFarmProducts
SELECT *
FROM DannyFarmOrders


                             --WRITE A CASE STATEMENT REFERENCING ANY TABLE


SELECT
     ProductID,
     UnitPrice,
     CASE
	    WHEN UnitPrice > 10  THEN 'High priced'
		 WHEN UnitPrice BETWEEN 5 AND 8 THEN 'Moderately priced'
		ELSE 'Low priced'
    END AS Price_category
FROM DannyFarmProducts




                                                     --JOIN ANY TWO TABLES

select *
FROM DannyFarmProducts AS DFP
INNER JOIN DannyFarmOrders AS DFO
ON DFO.ProdutID = DFO.ProdutID

SELECT *
FROM Dannyfarm
SELECT *
FROM DannyFarmProducts
SELECT *
FROM DannyFarmOrders