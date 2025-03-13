-- Create the database
CREATE DATABASE duka;
USE duka;

-- Create the payments table
CREATE TABLE payments (
    checkNumber VARCHAR(50) PRIMARY KEY,
    paymentDate DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL
);

-- Insert records into payments
INSERT INTO payments (checkNumber, paymentDate, amount) VALUES
('CHK001', '2024-03-01', 15000.00),
('CHK002', '2024-03-02', 20000.00),
('CHK003', '2024-03-03', 17500.00);

-- Create the orders table
CREATE TABLE orders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    orderDate DATE NOT NULL,
    requiredDate DATE NOT NULL,
    status VARCHAR(50) NOT NULL
);

-- Insert records into orders
INSERT INTO orders (orderDate, requiredDate, status) VALUES
('2024-03-01', '2024-03-10', 'In Process'),
('2024-03-05', '2024-03-15', 'Shipped'),
('2024-03-07', '2024-03-17', 'In Process');

-- Create the employees table
CREATE TABLE employees (
    employeeNumber INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    job_title VARCHAR(50) NOT NULL
);

-- Insert records into employees
INSERT INTO employees (firstName, lastName, email, job_title) VALUES
('Kamau', 'Mwangi', 'kamau.mwangi@gmail.com', 'Sales Rep'),
('Achieng', 'Odhiambo', 'achieng.odhiambo@gmail.com', 'Sales Rep'),
('Mutiso', 'john', 'mutiso.john@gmail.com', 'Manager');

-- Create the offices table
CREATE TABLE offices (
    officeCode INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    address VARCHAR(100) NOT NULL
);

-- Insert records into offices
INSERT INTO offices (city, phone, address) VALUES
('Nairobi', '+254700000001', 'Kimathi Street, Nairobi'),
('Mombasa', '+254700000002', 'Moi Avenue, Mombasa'),
('Kisumu', '+254700000003', 'Oginga Odinga Street, Kisumu');

-- Create the products table
CREATE TABLE products (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(100) NOT NULL,
    quantityInStock INT NOT NULL,
    buyPrice DECIMAL(10,2) NOT NULL
);

-- Insert records into products
INSERT INTO products (productName, quantityInStock, buyPrice) VALUES
('Sukari Premium', 500, 50.00),
('Kahawa Gold', 300, 250.00),
('Unga Ugali', 700, 100.00),
('Chai Bora', 400, 150.00),
('Mchele Super', 200, 200.00),
('Soda Kenya', 1000, 80.00);
