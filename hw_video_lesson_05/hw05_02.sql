DROP TABLE IF EXISTS users ;
CREATE TABLE users (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR ( 255 ) COMMENT 'Имя покупателя' ,
birthday_at DATE COMMENT 'Дата рождения' ,
created_at VARCHAR ( 255 ) ,
updated_at VARCHAR ( 255 ) 
) COMMENT = 'Покупатели' ;

INSERT INTO users  (name, birthday_at, created_at, updated_at) VALUES
('Геннадий', '1990-10-10', '20.10.2017 8:10', '20.10.2017 8:10'),
('Наталья', '1985-11-11', '20.10.2017 18:10', '20.10.2017 8:10'),
('Александр', '1983-05-10', '20.10.2017 18:10', '20.10.2017 8:10'),
('Сергей', '1988-02-20','20.10.2017 18:10', '20.10.2017 8:10'),
('Иван','1998-01-25', '20.10.2017 18:10', '20.10.2017 8:10'),
('Мария','2000-08-17', '20.10.2017 16:10', '20.10.2017 8:10');

SELECT * FROM users; 

SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS 
  WHERE table_name = 'users' AND (COLUMN_NAME = 'created_at' OR COLUMN_NAME = 'updated_at' );

UPDATE users SET created_at = str_to_date( created_at, '%d.%c.%Y %H:%i' ), updated_at = str_to_date( updated_at, '%d.%c.%Y %H:%i' ) 
WHERE id > '0';

ALTER TABLE users change created_at created_at datetime, change updated_at updated_at datetime;  

SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS 
  WHERE table_name = 'users' AND (COLUMN_NAME = 'created_at' OR COLUMN_NAME = 'updated_at' );