CREATE DEFINER=`root`@`localhost` TRIGGER `aabobyr_kurs_work.orders_BEFORE_DELETE` BEFORE DELETE ON `orders` FOR EACH ROW BEGIN
DECLARE total int;
SELECT COUNT(*) into total from orders_line where orders.id = ordersline.orders_order_id;
IF total >= 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Warning! You have to delete orders line before order ';
	END IF;
END