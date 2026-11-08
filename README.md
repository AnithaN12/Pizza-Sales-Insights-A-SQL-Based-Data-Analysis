# Pizza-Sales-Insights-A-SQL-Based-Data-Analysis

  This project analyzes pizza sales data using SQL to identify sales trends, customer preferences, revenue performance, and popular pizza categories. Using basic, intermediate, and advanced SQL queries, the analysis explores order volume, revenue, pizza size preferences, peak ordering hours, and top-performing products. The insights help businesses understand sales performance and make data-driven decisions to improve revenue and product strategy.
  
# Project Objectives

* Analyze overall pizza sales and revenue.
* Identify the most popular pizza types and sizes.
* Understand customer ordering patterns.
* Identify peak business hours and daily sales trends.
* Evaluate revenue contribution by pizza type.
* Discover top-performing pizzas across categories.

# Dataset Description
The project uses four relational tables:

**Table**                       **Description**
* orders                       Order ID and order date
* order_details                Order details, pizza ID, quantity
* pizzas                       Pizza ID, pizza type ID, size, price
* pizza_types                  Pizza type ID, name, category, ingredients

**Data relationships:**
* orders connects to order_details through order_id.
* order_details connects to pizzas through pizza_id.
* pizzas connects to pizza_types through pizza_type_id.

# Project Workflow
**1. Data Collection**
Import the pizza sales dataset and understand the four tables.

**2. Data Exploration**
Examine table structures, column names, data types, and record counts.

**3. Data Cleaning**
Check for NULL values, duplicate records, incorrect data types, and inconsistent data.

**4. SQL Analysis**
Write SQL queries using SELECT, JOIN, GROUP BY, ORDER BY, aggregate functions, subqueries, and window functions.

**5. Data Interpretation**
Identify sales trends, popular products, revenue contributions, and customer ordering patterns.

**6. Documentation and Reporting**
Organize SQL scripts, key findings, and project documentation.


# SQL Analysis – Business Questions
The SQL analysis is divided into three levels.

**Basic Analysis**
**Business question**               **SQL concepts**
* Total number of orders placed        COUNT, DISTINCT
* Total revenue generated              SUM, JOIN
* Highest-priced pizza                 MAX, JOIN
* Most common pizza size ordered       GROUP BY, SUM
* Top 5 most ordered pizza types       JOIN, GROUP BY, ORDER BY, LIMIT

**Intermediate Analysis**
**Business question**                         **SQL concepts**
* Total quantity ordered by pizza category       JOIN, GROUP BY
* Distribution of orders by hour                 HOUR, GROUP BY
* Category-wise pizza distribution               JOIN, GROUP BY
* Average number of pizzas ordered per day       Subquery, AVG
* Top 3 pizza types based on revenue             SUM, GROUP BY, LIMIT

**Advanced Analysis**
**Business question**                                                 **SQL concepts**
* Percentage contribution of each pizza type to total revenue         Subquery, SUM
* Cumulative revenue generated over time                              Window Functions, SUM
* Top 3 pizzas by revenue within each category                        CTE, DENSE_RANK

# Key Insights and Project Outcomes
The completed project should provide the following business insights:
* Sales Performance: Understand total orders and revenue generated.
* Product Performance: Identify best-selling and highest-revenue pizzas.
* Customer Preferences: Discover popular pizza sizes and categories.
* Ordering Trends: Identify peak ordering hours and daily demand.
* Revenue Analysis: Understand the percentage contribution of individual pizzas.
* Business Strategy: Identify top-performing pizzas in each category.

# Business Recommendations
Based on the actual query results, the business can:
* Promote high-revenue and popular pizzas.
* Optimize inventory based on demand.
* Introduce targeted offers during low-demand hours.
* Maintain sufficient stock of popular pizza sizes.
* Review underperforming products and categories.
* Use sales trends to improve pricing and marketing strategies.

