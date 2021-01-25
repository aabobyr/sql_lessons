#Подсчитайте произведение чисел в столбце таблицы.

DROP TABLE IF EXISTS test_tbl;
CREATE TABLE test_tbl (
  id SERIAL PRIMARY KEY,
  value INT UNSIGNED  
) COMMENT = 'произведение чисел в столбце';

INSERT INTO test_tbl (value) values
(1),
(2),
(3),
(4),
(5);
  
SELECT * FROM  test_tbl;

SELECT round(EXP(SUM(LOG(value)))) as multiplication FROM test_tbl 
