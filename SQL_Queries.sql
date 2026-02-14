-- Task-2 SQL Business Questions

-- 1. Top 5 Product Lines by Revenue
SELECT `Product line`, SUM(Total) AS Revenue
FROM sales
GROUP BY `Product line`
ORDER BY Revenue DESC
LIMIT 5;

-- 2. Branch Generating Highest Revenue
SELECT Branch, SUM(Total) AS Revenue
FROM sales
GROUP BY Branch
ORDER BY Revenue DESC;

-- 3. Most Used Payment Method
SELECT Payment, COUNT(*) AS Usage_Count
FROM sales
GROUP BY Payment
ORDER BY Usage_Count DESC;

-- 4. Average Rating Per Product Line
SELECT `Product line`, AVG(Rating) AS Avg_Rating
FROM sales
GROUP BY `Product line`
ORDER BY Avg_Rating DESC;

-- 5. Monthly Revenue Trend
SELECT strftime('%m', Date) AS Month,
SUM(Total) AS Revenue
FROM sales
GROUP BY Month
ORDER BY Month;
