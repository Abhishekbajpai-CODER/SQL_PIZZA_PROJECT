-- List the top 5 most ordered pizza types along with their quantities.

select pt.name , sum(od.quantity) as most_selling_pizza 
from pizza_types pt join pizzas pi on 
pt.pizza_type_id = pi.pizza_type_id
join order_details od on 
pi.pizza_id = od.pizza_id 
group by name 
order by most_selling_pizza desc limit 5;