																			-- Advanced Analysis


-- 1. Calculate the percentage contribution of each pizza type to total revenue

select pt.name, 
round(sum(od.quantity* p.price)*100/sum(sum(od.quantity*p.price)) over(), 2) as revenue_percentage 
from pizza_types pt 
join pizzas p 
on pt.pizza_type_id = p.pizza_type_id 
join order_details od 
on p.pizza_id = od.pizza_id 
group by pt.name 
order by revenue_percentage desc;


-- 2. Analyze the cumulative revenue generated over time

select o.order_date, 
round(sum(sum(od.quantity*p.price)) over(order by o.order_date),2) as cumulative_revenue 
from pizzas p 
join order_details od 
on p.pizza_id = od.pizza_id 
join orders o 
on od.order_id = o.order_id
group by o.order_date
order by o.order_date;


-- 3. Determine the top 3 most ordered pizza types based on revenue for each pizza category

with pizza_revenue as (select pt.category,pt.name, round(sum(od.quantity*p.price),2) as total_revenue  
from pizza_types pt 
join pizzas p on pt.pizza_type_id = p.pizza_type_id 
join order_details od on p.pizza_id = od.pizza_id 
group by pt.category, pt.name),
ranked_pizzas as 
(select category, name, total_revenue, 
dense_rank() over (partition by category order by total_revenue desc) as pizza_rank 
from pizza_revenue)
select category, name, total_revenue, pizza_rank 
from ranked_pizzas 
where pizza_rank <=3 
order by category, pizza_rank;
