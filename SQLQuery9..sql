-- Ques 9- Query 9- Group the orders by date and calculate the average number of pizzas ordered per day.


select avg(quantity) as 
	avg_pizza_ordered_per_day 
from  (select o.d_date,
	sum(od.quantity) as quantity
from orders as o
join order_details as od
on od.order_id = o.order_id
group by o.d_date) 
as order_quantity;