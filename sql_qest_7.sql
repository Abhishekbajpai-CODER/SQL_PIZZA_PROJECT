-- Determine the distribution of orders by hour of the day.
SELECT hour(order_time)as hour_distribution,count(order_id) as order_count from orders
group by hour_distribution;