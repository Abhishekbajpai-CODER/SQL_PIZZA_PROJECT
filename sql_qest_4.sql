-- Identify the most common pizza size ordered.

select quantity,count(order_details_id) as most_common_pizza from order_details group by quantity;

select pi.size,count(od.quantity) as most_common_size from pizzas pi join order_details od on pi.pizza_id = od.pizza_id
group by size order by most_common_size desc limit 1 ;