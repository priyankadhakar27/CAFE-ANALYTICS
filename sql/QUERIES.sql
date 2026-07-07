CREATE DATABASE cafe_analytics;
USE cafe_analytics;

CREATE TABLE customers (
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(50),
    Member VARCHAR(10)
);

CREATE TABLE employees (
    Employee_ID VARCHAR(10) PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Shift VARCHAR(20)
);

CREATE TABLE menu (
    Item_ID INT PRIMARY KEY,
    Item_Name VARCHAR(100),
    Category VARCHAR(50),
    Cost_Price DECIMAL(10,2),
    Selling_Price DECIMAL(10,2)
);

CREATE TABLE orders (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Customer_ID VARCHAR(10),
    Employee_ID VARCHAR(10),
    Order_Date DATE,
    Order_Time TIME,
    Payment_Method VARCHAR(20),
    Order_Type VARCHAR(20),
    Month VARCHAR(20),
    Day varchar(20),
    YEAR int,
    WEEKEND BOOLEAN,

    FOREIGN KEY (Customer_ID)
        REFERENCES customers(Customer_ID),

    FOREIGN KEY (Employee_ID)
        REFERENCES employees(Employee_ID)
        );


CREATE TABLE order_details (
    Order_Detail_ID INT PRIMARY KEY,
    Order_ID VARCHAR(20),
    Item_ID INT,
    Quantity INT,

    FOREIGN KEY (Order_ID)
        REFERENCES orders(Order_ID),

    FOREIGN KEY (Item_ID)
        REFERENCES menu(Item_ID)
);

SHOW TABLES;


SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM orders;
SELECT SUM(Quantity)
FROM order_details;
SELECT COUNT(*) AS Total_Employees
FROM employees;
SELECT COUNT(*) AS Total_Menu_Items
FROM menu;
SELECT SUM(Quantity) AS Total_Items_Sold
FROM order_details;

#REVENUE=QUANTITY*SELLING PRICE
SELECT
    SUM(od.Quantity * m.Selling_Price) AS Total_Revenue
FROM order_details od
JOIN menu m
ON od.Item_ID = m.Item_ID;

#AVG ODRDER BY VALUE
SELECT
ROUND(
SUM(od.Quantity*m.Selling_Price)
/COUNT(DISTINCT od.Order_ID),2)
AS Average_Order_Value
FROM order_details od
JOIN menu m
ON od.Item_ID=m.Item_ID;

#PRODUCT ANALYSIS
SELECT
m.Item_Name,
SUM(od.Quantity) AS Total_Sold
FROM order_details od
JOIN menu m
ON od.Item_ID=m.Item_ID
GROUP BY m.Item_Name
ORDER BY Total_Sold DESC;

#LEAST SELLING PRODUCT
SELECT
m.Item_Name,
SUM(od.Quantity) AS Total_Sold
FROM order_details od
JOIN menu m
ON od.Item_ID=m.Item_ID
GROUP BY m.Item_Name
ORDER BY Total_Sold ASC;

#REVENUE BY PRODUCT
SELECT
m.Item_Name,
SUM(od.Quantity*m.Selling_Price) AS Revenue
FROM order_details od
JOIN menu m
ON od.Item_ID=m.Item_ID
GROUP BY m.Item_Name
ORDER BY Revenue DESC;

#CATEGORY ANALYSIS
SELECT
m.Category,
SUM(od.Quantity) AS Quantity_Sold,
SUM(od.Quantity*m.Selling_Price) AS Revenue
FROM order_details od
JOIN menu m
ON od.Item_ID=m.Item_ID
GROUP BY m.Category
ORDER BY Revenue DESC;

#PAYMENT
SELECT
Payment_Method,
COUNT(*) AS Orders
FROM orders
GROUP BY Payment_Method
ORDER BY Orders DESC;

#EMPLOYEE PERFORMANCE
SELECT
e.Employee_Name,
COUNT(o.Order_ID) AS Orders_Handled
FROM orders o
JOIN employees e
ON o.Employee_ID=e.Employee_ID
GROUP BY e.Employee_Name
ORDER BY Orders_Handled DESC;
