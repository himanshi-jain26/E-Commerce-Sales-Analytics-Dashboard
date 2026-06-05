-- E-Commerce Sales Analytics SQL Project

-- 1. Total Sales
SELECT ROUND(SUM(sales),2) AS Total_Sales
FROM superstore;

-- 2. Total Profit
SELECT ROUND(SUM(profit),2) AS Total_Profit
FROM superstore;

-- 3. Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM superstore;

-- 4. Total Customers
SELECT COUNT(DISTINCT customer_id) AS Total_Customers
FROM superstore;

-- 5. Sales by Category
SELECT
category,
ROUND(SUM(sales),2) AS Total_Sales
FROM superstore
GROUP BY category
ORDER BY Total_Sales DESC;

-- 6. Profit by Category
SELECT
category,
ROUND(SUM(profit),2) AS Total_Profit
FROM superstore
GROUP BY category
ORDER BY Total_Profit DESC;

-- 7. Top 10 Customers by Sales
SELECT
customer_name,
ROUND(SUM(sales),2) AS Total_Sales
FROM superstore
GROUP BY customer_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 8. Top 10 Products by Sales
SELECT
product_name,
ROUND(SUM(sales),2) AS Total_Sales
FROM superstore
GROUP BY product_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 9. Sales by Region
SELECT
region,
ROUND(SUM(sales),2) AS Total_Sales
FROM superstore
GROUP BY region
ORDER BY Total_Sales DESC;

-- 10. Profit by Region
SELECT
region,
ROUND(SUM(profit),2) AS Total_Profit
FROM superstore
GROUP BY region
ORDER BY Total_Profit DESC;

-- 11. Sales by Customer Segment
SELECT
segment,
ROUND(SUM(sales),2) AS Total_Sales
FROM superstore
GROUP BY segment
ORDER BY Total_Sales DESC;

-- 12. Sales by Sub-Category
SELECT
sub_category,
ROUND(SUM(sales),2) AS Total_Sales
FROM superstore
GROUP BY sub_category
ORDER BY Total_Sales DESC;

-- 13. Average Profit by Discount Level
SELECT
discount_bin,
ROUND(AVG(profit),2) AS Avg_Profit
FROM superstore
GROUP BY discount_bin
ORDER BY Avg_Profit DESC;

-- 14. Monthly Sales Trend
SELECT
order_month,
ROUND(SUM(sales),2) AS Monthly_Sales
FROM superstore
GROUP BY order_month
ORDER BY order_month;

-- 15. Average Profit Margin by Category
SELECT
category,
ROUND(AVG(profit_margin),2) AS Avg_Profit_Margin
FROM superstore
GROUP BY category
ORDER BY Avg_Profit_Margin DESC;
