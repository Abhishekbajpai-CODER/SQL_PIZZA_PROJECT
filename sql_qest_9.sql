-- Group the orders by date and calculate 
-- the average number of pizzas ordered per day.

select round(avg(quantity),0) as avg_pizzas_order_day from
(select o.order_date,sum(od.quantity) as quantity from order_details od 
join orders o on od.order_id = o.order_id
group by  o.order_date) as order_quantity;