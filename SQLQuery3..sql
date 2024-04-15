-- Ques 3- Query 3- Identify the highest price of pizza.

--*Note:-  I have use TOP function instead of limit function.


select top 1 
	pizza_types.name, 
	round(pizzas.price,2) 
	as pizza_price
from pizza_types
join pizzas
on pizza_types.pizza_type_id = 
	pizzas.pizza_type_id
order by pizzas.price desc;