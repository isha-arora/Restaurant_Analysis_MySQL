-- Top 5 orders that spent the most money
WITH restaurant_cte as 
(
SELECT * from order_details as o
LEFT JOIN menu_items as m
ON o.item_id = m.menu_item_id
)

SELECT order_id, SUM(price) as money_spent
FROM restaurant_cte
GROUP BY order_id
ORDER BY money_spent DESC
LIMIT 5