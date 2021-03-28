-- Список строк заказов с кодами пользователей
SELECT 
	user_id AS 'Код пользователя',
    (SELECT concat(firstname, " ", lastname) FROM user_profiles WHERE users_user_id = user_id) AS 'ФИО',
    (SELECT user_profiles.gender FROM user_profiles WHERE users_user_id = user_id) AS 'пол',
    order_id AS 'Код заказа',
    orders_line_id AS 'Код строки заказа', 
    items_item_id AS 'Код номенклатуры продажи',
    (SELECT item_name FROM items WHERE items_item_id = item_id) AS 'Название номенклатуры продажи' ,
    (SELECT products_product_id FROM items WHERE items_item_id = item_id) AS 'Код продукта' ,
    (SELECT (SELECT product_name FROM products WHERE products_product_id = product_id) FROM items WHERE items_item_id = item_id) AS 'Название продукта',
	qty AS 'Кол-во в строке заказа',
    item_price AS 'Цена продажи',
    line_summ AS 'Сумма по строке',
    order_status_id AS 'Код статуса заказа',
    (SELECT name FROM order_status WHERE id = order_status_id) as 'Статус заказа',
    is_payment AS 'Заказ оплачен', 
    delivery_method_id AS 'Способ доставки'
FROM aabobyr_kurs_work.orders_line as l
JOIN orders as o where o.order_id = l.orders_order_id
GROUP BY user_id, order_id;