#Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT
	c.name,
    p.name,
    p.price
FROM products AS p JOIN catalogs AS c
ON p.catalog_id = c.id;