CREATE DATABASE retail_project;
USE retail_project;
CREATE TABLE sales (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(100),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code VARCHAR(20),
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name TEXT,
    Sales FLOAT,
    Quantity INT,
    Discount FLOAT,
    Profit FLOAT
    
);




SELECT * FROM sales;
DROP TABLE sales;
SELECT * FROM cleaned_sales_data LIMIT 5;

SELECT SUM(Sales) AS Total_Sales
FROM cleaned_sales_data;

SELECT SUM(Profit) AS Total_Profit
FROM cleaned_sales_data;

SELECT `Product Name`,
ROUND(SUM(`Sales`),2) AS Revenue
FROM cleaned_sales_data
GROUP BY `Product Name`
ORDER BY Revenue DESC
LIMIT 10;

SELECT `Product Name`,
SUM(Profit) AS Loss
FROM cleaned_sales_data
GROUP BY `Product Name`
ORDER BY Loss ASC
LIMIT 10;

SELECT State,
SUM(Sales) AS Revenue
FROM cleaned_sales_data
GROUP BY State
ORDER BY Revenue DESC;

SELECT Month,
ROUND(SUM(Sales),2) AS Revenue
FROM cleaned_sales_data
GROUP BY Month
ORDER BY Revenue DESC;