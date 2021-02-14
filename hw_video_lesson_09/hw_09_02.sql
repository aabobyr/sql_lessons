#Создайте представление, которое выводит название name товарной позиции из таблицы
#products и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW prod_name AS
	SELECT
		pr.name,
		c.name as cat_name
	FROM products AS pr
		JOIN catalogs AS c ON pr.catalog_id =c.id;
        

