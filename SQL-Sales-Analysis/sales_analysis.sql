-- SQL Sales Analysis Project
-- Dataset: Superstore

-- 1. Total Sales
SELECT 
    SUM(Sales) AS Total_Sales
FROM Superstore;


-- 2. Total Profit
SELECT 
    SUM(Profit) AS Total_Profit
FROM Superstore;


-- 3. Total Quantity Sold
SELECT 
    SUM(Quantity) AS Total_Quantity
FROM Superstore;


-- 4. Average Sales
SELECT 
    AVG(Sales) AS Average_Sales
FROM Superstore;


-- 5. Sales and Profit by Region
SELECT 
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 6. Sales and Profit by Category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 7. Top 10 Products by Sales
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- 8. Top 10 Products by Profit
SELECT 
    Product_Name,
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;


-- 9. Customer Performance
SELECT 
    Customer_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- 10. Loss-Making Products
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;


-- 11. Sales by Region and Category
SELECT 
    Region,
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Region, Category
ORDER BY Region, Total_Sales DESC;


-- 12. Profit Status using CASE
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    CASE
        WHEN SUM(Profit) > 0 THEN 'Profitable'
        WHEN SUM(Profit) < 0 THEN 'Loss'
        ELSE 'Break Even'
    END AS Profit_Status
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Profit DESC;


-- 13. Overall Business Performance
SELECT
    COUNT(*) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM Superstore;
