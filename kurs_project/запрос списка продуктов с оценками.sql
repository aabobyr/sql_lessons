-- Запрос списка товаров с оценками для отображения на сайте.
Select 
	product_name,
	(select name from manufacturer where manufacturer_id = id) as manufacturer,
	(select country from manufacturer where manufacturer_id = id) as country_of_made,
	(select avg(rating) from feedback where items_item_id = i.item_id) as avg_rating
from products as p
left join items as i 
	on i.products_product_id = p.product_id
	group by p.product_id;
    
-- через join получается медленней хотя проще в понимании--

/*Select 
	product_id,
	product_name,
	(select name from manufacturer where manufacturer_id = id) as manufacturer,
	(select country from manufacturer where manufacturer_id = id) as country_of_made,
	avg(f.rating) as avg_rating
from products as p
left join items as i 
	on i.products_product_id = p.product_id
left join feedback as f
	on f.items_item_id = i.item_id
	group by p.product_id
    order by p.product_name;*/
    