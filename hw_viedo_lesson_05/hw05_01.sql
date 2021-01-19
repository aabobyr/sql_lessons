DROP TABLE IF EXISTS users ;
CREATE TABLE users (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR ( 255 ) COMMENT 'Имя покупателя' ,
birthday_at DATE COMMENT 'Дата рождения' ,
created_at DATETIME ,
updated_at DATETIME 
) COMMENT = 'Покупатели' ;

INSERT INTO users  (name, birthday_at) VALUES
('Геннадий', '1990-10-10'),
('Наталья', '1985-11-11'),
('Александр', '1983-05-10'),
('Сергей', '1988-02-20'),
('Иван','1998-01-25'),
('Мария','2000-08-17');

SELECT * FROM users; 

UPDATE users SET created_at = NOW(), updated_at = NOW() WHERE id > '0' and created_at IS NULL; 

SELECT * FROM users; 