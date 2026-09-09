--Query 1 – Sales Performance (CASE)
SELECT
    category,
    sales,
    CASE
        WHEN sales >= 1000 THEN 'High Sales'
        WHEN sales >= 500 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS sales_category
FROM retail_sales;


--Query 2 – Profit Status
SELECT
    category,
    profit,
    CASE
        WHEN profit > 0 THEN 'Profit'
        WHEN profit = 0 THEN 'Break Even'
        ELSE 'Loss'
    END AS profit_status
FROM retail_sales;


--Query 3 – Rank States by Sales
SELECT
    state,
    SUM(sales) AS total_sales,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS sales_rank
FROM retail_sales
GROUP BY state;


--Query 4 – Dense Rank Regions
SELECT
    region,
    SUM(profit) AS total_profit,
    DENSE_RANK() OVER (ORDER BY SUM(profit) DESC) AS profit_rank
FROM retail_sales
GROUP BY region;


--Query 5 – Row Number for Highest Sales
SELECT
    city,
    sales,
    ROW_NUMBER() OVER (ORDER BY sales DESC) AS row_num
FROM retail_sales;


--Query 6 – Running Total of Sales
SELECT
    city,
    sales,
    SUM(sales) OVER (ORDER BY sales) AS running_sales
FROM retail_sales;


--Query 7 – Average Sales by Category (Window Function)
SELECT
    category,
    sales,
    ROUND(
        AVG(sales) OVER(PARTITION BY category),
        2
    ) AS avg_category_sales
FROM retail_sales;


--Query 8 – Top 5 States by Profit (CTE)
WITH state_profit AS
(
    SELECT
        state,
        SUM(profit) AS total_profit
    FROM retail_sales
    GROUP BY state
)

SELECT *
FROM state_profit
ORDER BY total_profit DESC
LIMIT 5;


--Query 9 – Subquery
SELECT *
FROM retail_sales
WHERE sales >
(
    SELECT AVG(sales)
    FROM retail_sales
);


--Query 10 – Highest Sales in Each Category
SELECT *
FROM retail_sales rs
WHERE sales =
(
    SELECT MAX(sales)
    FROM retail_sales
    WHERE category = rs.category
);


--Query 11 – Highest Profit by State
SELECT
    state,
    MAX(profit) AS highest_profit
FROM retail_sales
GROUP BY state
ORDER BY highest_profit DESC;


--Query 12 – Lowest Profit by State
SELECT
    state,
    MIN(profit) AS lowest_profit
FROM retail_sales
GROUP BY state
ORDER BY lowest_profit;


--Query 13 – Profit Margin
SELECT
    category,
    ROUND(
        SUM(profit) / SUM(sales) * 100,
        2
    ) AS profit_margin
FROM retail_sales
GROUP BY category;


--Query 14 – Top Performing Region
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY region
ORDER BY total_profit DESC;


--Query 15 – Business Summary
SELECT
    COUNT(*) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(AVG(sales),2) AS average_sales,
    SUM(quantity) AS total_quantity
FROM retail_sales;