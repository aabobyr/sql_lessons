-- топ 20 наиболее заказываемых позиций

SELECT 
    items_item_id,
    i.item_name,
	qty
from orders_line AS l
JOIN orders AS o
ON l.orders_order_id = o.order_id && order_status_id = 3 -- берем только оплаченные заказы 
JOIN items AS i
ON i.item_id = l.items_item_id
ORDER BY qty DESC
LIMIT 20;
