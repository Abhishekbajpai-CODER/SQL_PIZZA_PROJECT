-- Identify the highest-priced pizza.

select name,price from pizza_types pt join pizzas pi
on pt.pizza_type_id = pi.pizza_type_id
order by price desc limit 1;