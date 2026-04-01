
-- Q11 Subquery
SELECT productLine, COUNT(*) AS product_count
FROM products
WHERE buyPrice > (SELECT AVG(buyPrice) FROM products)
GROUP BY productLine;
