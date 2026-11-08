																	-- Intermediate Analysis

-- 1. Join the necessary tables to find the total quantity of each pizza category ordered

SELECT 
    pt.category, SUM(od.quantity) AS quantity
FROM
    pizza_types pt
        JOIN
    pizzas p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.category
ORDER BY quantity DESC;


-- 2. Determine the distribution of orders by hour of the day

SELECT 
    HOUR(order_time) AS order_hour, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY order_hour;


-- 3. Join relevant tables to find the category-wise distribution of pizzas

SELECT 
    pt.category,
    COUNT(od.order_details_id) AS total_pizza_records
FROM
    pizza_types pt
        JOIN
    pizzas p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.category;


-- 4. Group the orders by date and calculate the average number of pizzas ordered per day

SELECT 
    ROUND(AVG(daily_quantity), 2) AS avg_pizzas_per_day
FROM
    (SELECT 
        o.order_date, SUM(od.quantity) AS daily_quantity
    FROM
        orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY o.order_date) AS daily_orders;
    

-- 5. Determine the top 3 most ordered pizza types based on revenue

SELECT 
    pt.name, SUM(od.quantity * p.price) AS revenue
FROM
    pizza_types pt
        JOIN
    pizzas p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.name
ORDER BY revenue DESC
LIMIT 3;