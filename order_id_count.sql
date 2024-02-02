-- Exploring Orders Table
SELECT order_id, count(item_id) as total_items
FROM order_details
GROUP BY order_id
ORDER BY total_items DESC
LIMIT 10