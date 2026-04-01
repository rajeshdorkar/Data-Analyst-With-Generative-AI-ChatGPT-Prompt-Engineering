
-- Q6 Self Join
CREATE TABLE project (
 EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
 FullName VARCHAR(50) NOT NULL,
 Gender ENUM('Male','Female'),
 ManagerID INT
);

SELECT e.FullName AS Employee, m.FullName AS Manager
FROM project e
LEFT JOIN project m ON e.ManagerID = m.EmployeeID;
