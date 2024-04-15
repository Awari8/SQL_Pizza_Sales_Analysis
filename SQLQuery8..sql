-- Ques 8- Query 8- Join relevant tables to find the category-wise distribution of pizzas.

select category, 
	count(name) as 
	   count_of_pizzas 
from pizza_types
group by category;