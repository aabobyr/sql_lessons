DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  product_id INT UNSIGNED,
  value INT UNSIGNED  
) COMMENT = 'Запасы на складе';

INSERT INTO storehouses_products (value) values
(0),
(2500),
(0),
(30),
(500),
(1);
  
SELECT * FROM  storehouses_products
ORDER BY (value = 0), value;
