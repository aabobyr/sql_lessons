/* В таблице products есть два текстовых поля: name с названием товара и description с его
описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля
принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь
того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям
NULL-значение необходимо отменить операцию.*/

DROP TRIGGER IF EXISTS null_desc_Trigger;
delimiter //
CREATE TRIGGER null_desc_Trigger BEFORE INSERT ON shop.products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Warning! NULL in both fields - name - description!';
	END IF;
END //
delimiter ;

INSERT INTO shop.products (name, description, price, catalog_id)
VALUES (NULL, NULL, 12700.00, 1);

INSERT INTO shop.products (name, description, price, catalog_id)
VALUES ("MSI GeForce GTX 1660 SUPER GAMING Z PLUS 6GB", "Игровая видеокарта GAMING Z PLUS 6GB", 49490, 3);