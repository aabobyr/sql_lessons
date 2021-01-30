# Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

# Через join, намного проще посчитать в дальнейшем количество заказов
Select 
	u.id, 
    name
FROM
	users AS u JOIN orders AS o
ON
	u.id = o.user_id
GROUP BY u.id;

#через вложенный запрос, только список без количества заказов
SELECT id, name FROM users 
where users.id in (select user_id from orders)