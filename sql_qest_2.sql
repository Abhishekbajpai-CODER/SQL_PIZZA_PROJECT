-- Calculate the total revenue generated from pizza sales.

select round(sum(od.quantity * p.price),2) as total_sale from order_details od 
inner join pizzas p on od.pizza_id = p.pizza_id;
