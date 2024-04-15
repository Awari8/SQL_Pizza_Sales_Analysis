-- Ques 12-- Query 12- Analyze the cumulative revenue generated over time.



select d_date, sum(revenue) over(order by d_date) 
	as cum_revenue from 
(select orders.d_date,
sum(order_details.quantity * pizzas.price) 
as revenue from order_details 
join pizzas
on order_details.pizza_id = 
pizzas.pizza_id Djoin orders
on orders.order_id = order_details.order_id
group by orders.d_date) as sales;