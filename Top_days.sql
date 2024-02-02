-- Highest performing days
WITH restaurant_cte as 
(
SELECT * from order_details as o
LEFT JOIN menu_items as m
ON o.item_id = m.menu_item_id
)

SELECT order_date, COUNT(order_id) as total_num
FROM restaurant_cte
GROUP BY order_date
ORDER BY total_num DESC
LIMIT 5
