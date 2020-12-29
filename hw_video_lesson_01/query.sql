--открываем через командную строку среду mysql
mysql

CREATE DATABASE IF NOT EXISTS example;

CREATE TABLE users (id Int(3), name CHAR(50));
exit

--закрыем среду mysql и делаем дамп базы 
mysqldump example > example.sql

--открываем mysql для создания базы sample
mysql
CREATE DATABASE sample;
exit

--заполняем таблицу из дампа
mysql sample < example.sql

--получаем первые 100 записей из таблицы help_keyword_id базы mysql
mysqldump -uroot -p mysql help_keyword --where="help_keyword_id<100" > help_keyword.sql