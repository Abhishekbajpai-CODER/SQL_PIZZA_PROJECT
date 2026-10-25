-- Join the necessary tables to find the total quantity of each pizza category ordered.

select pt.category, sum(od.quantity) as total_quantity
from pizza_types pt join pizzas pi
on pt.pizza_type_id = pi.pizza_type_id 
join order_details od on pi.pizza_id = od.pizza_id
group by pt.category order by total_quantity;