
-- Q8 View
CREATE VIEW product_category_sales AS
SELECT pl.productLine,
       SUM(od.quantityOrdered * od.priceEach) AS total_sales,
       COUNT(DISTINCT o.orderNumber) AS number_of_orders
FROM productlines pl
JOIN products p ON pl.productLine = p.productLine
JOIN orderdetails od ON p.productCode = od.productCode
JOIN orders o ON od.orderNumber = o.orderNumber
GROUP BY pl.productLine;
