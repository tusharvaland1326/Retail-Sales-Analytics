--Query 1 – Total Sales by Category
SELECT
    category,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;


--Query 2 – Total Profit by Category
SELECT
    category,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY category
ORDER BY total_profit DESC;


--Query 3 – Number of Orders by Region
SELECT
    region,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY region
ORDER BY total_orders DESC;


--Query 4 – Average Sales by Segment
SELECT
    segment,
    ROUND(AVG(sales),2) AS average_sales
FROM retail_sales
GROUP BY segment
ORDER BY average_sales DESC;


--Query 5 – Average Profit by Region
SELECT
    region,
    ROUND(AVG(profit),2) AS average_profit
FROM retail_sales
GROUP BY region
ORDER BY average_profit DESC;


--Query 6 – Total Quantity Sold by Category
SELECT
    category,
    SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY category
ORDER BY total_quantity DESC;


--Query 7 – Top 10 States by Sales
SELECT
    state,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;


--Query 8 – Top 10 Cities by Profit
SELECT
    city,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY city
ORDER BY total_profit DESC
LIMIT 10;


--Query 9 – Average Discount by Category
SELECT
    category,
    ROUND(AVG(discount),2) AS average_discount
FROM retail_sales
GROUP BY category;


--Query 10 – Categories with Sales Above 700000
SELECT
    category,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category
HAVING SUM(sales) > 700000;


--Query 11 – Regions with Profit Above 40000
SELECT
    region,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY region
HAVING SUM(profit) > 40000;


--Query 12 – Sales by Ship Mode
SELECT
    ship_mode,
    SUM(sales) AS total_sales
FROM retail_sales
GROUP BY ship_mode
ORDER BY total_sales DESC;


--Query 13 – Profit by Segment
SELECT
    segment,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY segment
ORDER BY total_profit DESC;


--Query 14 – Sales and Profit by Region
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY region
ORDER BY total_sales DESC;


--Query 15 – Category Performance
SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(quantity) AS total_quantity,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;