
-- Q2 CASE STATEMENT
SELECT customerNumber, customerName,
CASE
  WHEN country IN ('USA','Canada') THEN 'North America'
  WHEN country IN ('UK','France','Germany') THEN 'Europe'
  ELSE 'Other'
END AS CustomerSegment
FROM customers;
