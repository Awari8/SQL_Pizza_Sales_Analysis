-- Ques 7- Query 7- Determine the distribution of orders by hour of the day.

--* Note - To extract the hours from the given time we need to use [datename(hour, t_time)] <<-- query


select datename(hour, t_time) 
	as hour, count(order_id) 
	as order_count 
from orders
group by datename(hour, t_time)
order by hour;