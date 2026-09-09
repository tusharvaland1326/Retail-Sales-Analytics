# Retail Sales Analytics

## 📊 Project Overview

This project is an end-to-end Retail Sales Analytics project using the Sample Superstore dataset.

The project analyses sales, profit, customers, products, regions, categories, sub-categories, shipping modes, and discounts to identify important business trends and opportunities.

The analysis combines **Python, SQL/PostgreSQL, and Power BI** to transform raw retail data into meaningful business insights and recommendations.

---

## 🎯 Project Objectives

- Analyse overall sales and profitability
- Identify the most profitable product categories
- Analyse regional sales performance
- Understand customer segment performance
- Identify top-performing states and cities
- Analyse product sub-category performance
- Identify loss-making orders and products
- Analyse the relationship between discounts and profitability
- Build an interactive Power BI dashboard
- Provide data-driven business recommendations

---

## 📁 Dataset

The project uses the **Sample Superstore** dataset.

### Dataset Size

- **Records:** 9,994
- **Columns:** 13

### Main Columns

- Ship Mode
- Segment
- Country
- City
- State
- Postal Code
- Region
- Category
- Sub-Category
- Sales
- Quantity
- Discount
- Profit

---

## 🛠️ Tools & Technologies

### Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

### SQL / PostgreSQL
- Data aggregation
- Filtering
- Sorting
- CASE statements
- CTEs
- Subqueries
- Window functions
- Ranking
- Profit margin analysis

### Power BI
- Interactive dashboards
- KPI analysis
- Sales and profit visualisation
- Regional analysis
- Category analysis
- Customer segment analysis
- Product performance analysis

---

## 🔄 Project Workflow

```text
Raw Dataset
     ↓
Data Exploration
     ↓
Python EDA
     ↓
SQL Analysis
     ↓
Business Insights
     ↓
Power BI Dashboard
     ↓
Business Recommendations

```

# 📈 Key Performance Indicators

The project identified the following key performance indicators:

| KPI | Value |
|---|---:|
| 💰 Total Sales | **$2.30M** |
| 📈 Total Profit | **$0.29M** |
| 📦 Total Records | **9,994** |
| 🛒 Total Quantity | **37,873** |
| 🏷️ Average Discount | **15.62%** |
| 💵 Profit Margin | **12.47%** |
| ⚠️ Loss-Making Records | **1,871** |

🔍 Key Findings

🏷️ Category Performance

Technology generated the highest sales and profit.

Technology generated approximately $836K in sales and $145K in profit.

Furniture generated approximately $742K in sales but only around $18K in profit.

Office Supplies generated approximately $719K in sales and $122K in profit.


🌎 Regional Performance

The West region was the strongest-performing region.

West generated approximately $725K in sales and $108K in profit.

The South region had the lowest sales at approximately $392K.


👥 Customer Segment Performance

Consumer was the largest customer segment.

Consumer generated approximately $1.16M in sales and $134K in profit.

Corporate generated approximately $706K in sales and $92K in profit.

Home Office generated approximately $430K in sales and $60K in profit.


📦 Product Performance

Phones and Chairs were among the highest-selling sub-categories.

Tables generated negative overall profit.

Bookcases and Supplies also showed negative total profit.


📍 Geographic Performance

California was the top state by sales, generating approximately $458K.

New York was the second-highest state by sales, generating approximately $311K.


💰 Discount & Profitability

The average discount was approximately 15.62%.

1,871 records were loss-making.

Discount levels should be reviewed for transactions and products generating low or negative profit.
