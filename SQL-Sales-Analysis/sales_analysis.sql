-- SQL Sales Analysis Project

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM Superstore;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM Superstore;

-- 3. Total Quantity
SELECT SUM(Quantity) AS Total_Quantity
FROM Superstore;

-- 4. Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 5. Profit by Region
SELECT Region, SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 6. Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 7. Top 10 Products by Sales
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;
