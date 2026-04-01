
-- Q10a Rank Customers
SELECT c.customerName,
       COUNT(o.orderNumber) AS order_count,
       RANK() OVER (ORDER BY COUNT(o.orderNumber) DESC) AS rnk
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY c.customerName;

-- Q10b YoY Orders
WITH yearly AS (
 SELECT YEAR(orderDate) yr,
        MONTH(orderDate) mn,
        COUNT(*) cnt
 FROM orders
 GROUP BY YEAR(orderDate), MONTH(orderDate)
)
SELECT yr, mn, cnt,
       CONCAT(ROUND((cnt - LAG(cnt) OVER (ORDER BY yr)) /
       LAG(cnt) OVER (ORDER BY yr) * 100), '%') AS YoY
FROM yearly;
