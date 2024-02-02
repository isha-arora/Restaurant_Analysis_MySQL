SELECT 
category, COUNT(menu_item_id) as total_dishes, AVG(price) as avg_price
FROM menu_items
GROUP BY category 