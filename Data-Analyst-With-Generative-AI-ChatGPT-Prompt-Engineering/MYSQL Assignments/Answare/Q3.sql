
-- Q3a Top 10 Products by Quantity
SELECT productCode, SUM(quantityOrdered) AS total_quantity
FROM orderdetails
GROUP BY productCode
ORDER BY total_quantity DESC
LIMIT 10;

-- Q3b Payments by Month > 20
SELECT MONTHNAME(paymentDate) AS month_name,
       COUNT(*) AS total_payments
FROM payments
GROUP BY MONTH(paymentDate)
HAVING total_payments > 20
ORDER BY total_payments DESC;
