-- сколько должны поставщикам за проданные товары

SELECT 
	v.vendor_id,
    v.vendor_name,
    items_item_id,
    i.item_name,
	qty,
    o.order_status_id,
    (SELECT name FROM order_status WHERE id = o.order_status_id) as status_name,
    item_price as sales_price, 
    (SELECT price FROM vendors_price WHERE items_item_id = l.items_item_id && start_date <= created_at) as purch_price,
    ((SELECT price FROM vendors_price WHERE items_item_id = l.items_item_id && start_date <= created_at) * qty) as vendor_charge
FROM orders_line AS l
JOIN orders AS o
ON l.orders_order_id = o.order_id && o.order_status_id >= 3 && o.order_status_id <= 5 -- берем только оплаченные заказы 
JOIN items AS i
ON i.item_id = l.items_item_id
JOIN vendors as v
ON i.vendors_vendor_id = v.vendor_id
GROUP BY vendor_id, item_id