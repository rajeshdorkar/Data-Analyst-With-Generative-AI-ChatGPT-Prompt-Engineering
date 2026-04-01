
-- Q4 Constraints
CREATE DATABASE IF NOT EXISTS Customers_Orders;
USE Customers_Orders;

CREATE TABLE Customers (
 customer_id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 email VARCHAR(255) UNIQUE,
 phone_number VARCHAR(20)
);

CREATE TABLE Orders (
 order_id INT PRIMARY KEY AUTO_INCREMENT,
 customer_id INT,
 order_date DATE,
 total_amount DECIMAL(10,2),
 FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
 CHECK (total_amount > 0)
);
