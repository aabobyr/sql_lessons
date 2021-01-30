DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255),
  `to` VARCHAR(255));
   
INSERT INTO flights
  (id, `from`, `to`)
VALUES
('1', 'moscow', 'omsk'),
('2', 'novgorod', 'kazan'),
('3', 'irkutsk', 'moscow'),
('4', 'omsk', 'irkutsk'),
('5', 'moscow', 'kazan');

SELECT * FROM flights;

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255),
  name VARCHAR(255));
   
INSERT INTO cities
  (label, name)
VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omsk', 'Омск');

SELECT * FROM cities;

SELECT
	id,
    c.name,
    c2.name
FROM flights as f 
	JOIN cities as c ON f.from = c.label
	JOIN cities as c2 ON f.to = c2.label
ORDER BY id;

	
