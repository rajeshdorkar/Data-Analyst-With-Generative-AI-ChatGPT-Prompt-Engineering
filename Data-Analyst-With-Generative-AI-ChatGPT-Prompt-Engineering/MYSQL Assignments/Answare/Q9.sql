
-- Q9 Stored Procedure
DELIMITER $$
CREATE PROCEDURE Get_country_payments(IN p_year INT, IN p_country VARCHAR(50))
BEGIN
 SELECT p_country AS Country,
        p_year AS Year,
        CONCAT(ROUND(SUM(p.amount)/1000), 'K') AS Total_Amount
 FROM payments p
 JOIN customers c ON p.customerNumber = c.customerNumber
 WHERE YEAR(p.paymentDate) = p_year
   AND c.country = p_country;
END$$
DELIMITER ;
