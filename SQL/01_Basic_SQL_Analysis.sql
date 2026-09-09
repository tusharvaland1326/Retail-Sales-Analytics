--Query 1 – Display All Records
SELECT *
FROM retail_sales;


--Query 2 – Display Selected Columns
SELECT
    city,
    state,
    category,
    sales,
    profit
FROM retail_sales;


--Query 3 – Find Unique Categories
SELECT DISTINCT category
FROM retail_sales;


--Query 4 – Find Unique Regions
SELECT DISTINCT region
FROM retail_sales


--Query 5 – Total Number of Records
SELECT COUNT(*) AS total_records
FROM retail_sales


--Query 6 – Total Sales
SELECT SUM(sales) AS total_sales
FROM retail_sales;


--Query 7 – Total Profit
SELECT SUM(profit) AS total_profit
FROM retail_sales;


--Query 8 – Average Sales
SELECT AVG(sales) AS average_sales
FROM retail_sales;


--Query 9 – Highest Sale
SELECT MAX(sales) AS highest_sale
FROM retail_sales;


--Query 10 – Lowest Profit
SELECT MIN(profit) AS lowest_profit
FROM retail_sales;


--Query 11 – Top 10 Highest Sales
SELECT *
FROM retail_sales
ORDER BY sales DESC
LIMIT 10;


--Query 12 – Sales Greater Than 500
SELECT *
FROM retail_sales
WHERE sales > 500;


--Query 13 – Furniture Category
SELECT *
FROM retail_sales
WHERE category = 'Furniture';


--Query 14 – West Region Sales
SELECT *
FROM retail_sales
WHERE region = 'West';


--Query 15 – Loss-Making Orders
SELECT *
FROM retail_sales
WHERE profit < 0;


--Query 16 – Sort by Profit
SELECT *
FROM retail_sales
ORDER BY profit DESC;


