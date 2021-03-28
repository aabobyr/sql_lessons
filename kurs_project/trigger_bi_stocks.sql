CREATE DEFINER = CURRENT_USER TRIGGER `aabobyr_kurs_work`.`stocks_BEFORE_INSERT` BEFORE INSERT ON `stocks` FOR EACH ROW
BEGIN
IF (SELECT vendors_vendor_id FROM items WHERE item_id = new.items_item_id) != (SELECT vendors_vendor_id FROM warehouses where warehouse_id = new.warehouses_warehouse_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Warning! vendor of item is and venrod for warehouse have to match';
	END IF;
END
