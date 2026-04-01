
-- Q13 Trigger
CREATE TABLE Emp_BIT (
 Name VARCHAR(50),
 Occupation VARCHAR(50),
 Working_date DATE,
 Working_hours INT
);

DELIMITER $$
CREATE TRIGGER before_insert_emp
BEFORE INSERT ON Emp_BIT
FOR EACH ROW
BEGIN
 IF NEW.Working_hours < 0 THEN
   SET NEW.Working_hours = ABS(NEW.Working_hours);
 END IF;
END$$
DELIMITER ;
