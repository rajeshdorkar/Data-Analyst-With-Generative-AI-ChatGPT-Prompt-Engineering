
-- Q5 Joins
SELECT c.country, COUNT(o.orderNumber) AS order_count
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY c.country
ORDER BY order_count DESC
LIMIT 5;
