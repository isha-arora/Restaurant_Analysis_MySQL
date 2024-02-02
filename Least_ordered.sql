-- LEAST ORDERED ITEMS
WITH restaurant_cte as 
(
SELECT * from order_details as o
LEFT JOIN menu_items as m
ON o.item_id = m.menu_item_id
)

SELECT item_name, count(item_id) as total_purchases
FROM restaurant_cte
WHERE item_name IS NOT NULL
GROUP BY item_name
ORDER BY total_purchases
LIMIT 5