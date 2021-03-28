-- Получение предложений от разных поставщиков с разными ценами по одному продукту
-- на вход можно подать любой продукт 

SELECT
	products_product_id,
    (SELECT product_name FROM products WHERE product_id = i.products_product_id) AS product_name,
    -- (SELECT price FROM vendors_price WHERE item_id = i.item_id) AS price,
    qty,
    item_id,
    w.vendors_vendor_id,
    (SELECT vendor_name FROM vendors WHERE vendor_id = i.vendors_vendor_id) AS i_vendor_name,
    -- (SELECT vendor_name FROM vendors WHERE vendor_id = w.vendors_vendor_id) AS w_vendor_name,
    warehouse_id,
    name AS warehouse_name,
    adress AS warehouse_adress 
FROM stocks AS s
	JOIN items AS i 
    ON  s.items_item_id = i.item_id
    LEFT JOIN warehouses as w
    ON s.warehouses_warehouse_id = w.warehouse_id
    WHERE products_product_id = 7;
