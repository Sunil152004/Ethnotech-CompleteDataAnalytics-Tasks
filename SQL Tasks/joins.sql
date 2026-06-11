use vishnu;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);
CREATE TABLE OrderInfo (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT
);
desc Customers;
desc OrderInfo;
INSERT INTO Customers
(CustomerID, CustomerName, Address, City, PostalCode, Country)
VALUES
(101, 'Sunil Kumar', '12 Park Street', 'New York', '10001', 'USA'),
(102, 'Sai', '45 Lake View', 'Chicago', '60601', 'USA'),
(103, 'Ganesh', '78 MG Road', 'Bangalore', '560001', 'India'),
(104, 'Lakshmikanth', '22 Gandhi Nagar', 'Delhi', '110001', 'India'),
(105, 'Gokul kumar', '90 King Street', 'London', 'SW1A1AA', 'UK');
select*from Customers;
INSERT INTO OrderInfo
(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES
(1001, 101, 201, '2026-01-15', 1),
(1002, 102, 202, '2026-01-18', 2),
(1003, 103, 203, '2026-01-20', 1),
(1004, 104, 201, '2026-01-22', 3),
(1005, 105, 202, '2026-01-25', 2);
select*from OrderInfo;
# LEFT JOIN
SELECT
    c.CustomerID,
    c.CustomerName,
    c.City,
    c.Country,
    o.OrderID,
    o.OrderDate,
    o.EmployeeID,
    o.ShipperID
FROM Customers c
LEFT JOIN OrderInfo o
ON c.CustomerID = o.CustomerID;
# RIGHT JOIN
SELECT
    o.CustomerID,
    c.CustomerName,
    c.City,
    c.Country,
    o.OrderID,
    o.OrderDate,
    o.EmployeeID,
    o.ShipperID
FROM Customers c
RIGHT JOIN OrderInfo o
ON c.CustomerID = o.CustomerID;
# LEFT OUTER JOIN
SELECT
    c.CustomerID,
    c.CustomerName,
    c.City,
    o.OrderID,
    o.OrderDate
FROM Customers c
LEFT OUTER JOIN OrderInfo o
ON c.CustomerID = o.CustomerID;
# RIGHT OUTER JOIN
SELECT
    c.CustomerID,
    c.CustomerName,
    c.City,
    o.OrderID,
    o.OrderDate
FROM Customers c
RIGHT OUTER JOIN OrderInfo o
ON c.CustomerID = o.CustomerID;
# INNER JOIN
SELECT c.CustomerID, c.CustomerName, c.Address, c.City, c.PostalCode, c.Country
FROM Customers c
INNER JOIN OrderInfo o
ON c.CustomerID = o.CustomerID;
# FULL JOIN
SELECT
    c.CustomerID,
    c.CustomerName,
    c.Address,
    c.City,
    c.Country,
    o.OrderID,
    o.EmployeeID,
    o.OrderDate,
    o.ShipperID
FROM Customers c
LEFT JOIN OrderInfo o
ON c.CustomerID = o.CustomerID

UNION

SELECT
    c.CustomerID,
    c.CustomerName,
    c.Address,
    c.City,
    c.Country,
    o.OrderID,
    o.EmployeeID,
    o.OrderDate,
    o.ShipperID
FROM Customers c
RIGHT JOIN OrderInfo o
ON c.CustomerID = o.CustomerID;
