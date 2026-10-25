-- Calculate the percentage contribution of 
-- each pizza type to total revenue.

select pizza_types.category,
round((sum(order_details.quantity*pizzas.price) /
(select round(sum(od.quantity * p.price),2) as total_sale from order_details od 
inner join pizzas p on od.pizza_id = p.pizza_id))*100,2) as revenue
from pizza_types join pizzas
on pizzas.pizza_type_id = pizza_types.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category order by revenue desc;