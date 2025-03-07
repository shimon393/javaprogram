CREATE DATABASE SalesInventory;

USE SalesInventory;


CREATE TABLE Products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(100),
    price_per_unit FLOAT,
    quantity_in_stock INT
);

CREATE TABLE Sales (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id VARCHAR(50),
    quantity_sold INT,
    sale_date DATETIME,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

select * from products;