
-- Q1 SELECT, WHERE, DISTINCT, LIKE
SELECT employeeNumber, firstName, lastName
FROM employees
WHERE jobTitle = 'Sales Rep'
  AND reportsTo = 1102;

SELECT DISTINCT productLine
FROM products
WHERE productLine LIKE '%cars';
