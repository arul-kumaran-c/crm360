-- create database
CREATE DATABASE test;

-- create table
CREATE TABLE drafts(
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name  VARCHAR(255) NOT NULL,
    product_name  VARCHAR(255) NOT NULL,
    packing_date  date NOT NULL,
    quantity  DECIMAL(10,2) DEFAULT 0 NOT NULL,
    status  ENUM('Final', 'Draft', 'Quatation', 'Profoma') NOT NULL,
    shipping_address  TEXT,
    invoice_number  VARCHAR(10) NOT NULL UNIQUE,
    unit_price DECIMAL(10,2) NOT NULL,
    discount_price DECIMAL(5,2) NOT NULL,
    tax DECIMAL(10,2) NOT NULL

);

-- insert datas
INSERT INTO drafts (customer_name, product_name, packing_date, quantity, status, shipping_address, invoice_number, unit_price, discount_price, tax)

VALUES('Babu', 'fan', '2025-02-03', 50, 'Final', 'Db road, Rs Puram', 'INV0001', 500, 40, 5.),
      ('Arul', 'charger', '2025-02-23', 50, 'Final', 'Db road, Rs Puram', 'INV0002', 300, 30, 5.),
      ('Kumar', 'monitor', '2025-02-13', 50, 'Final', 'Db road, Rs Puram', 'INV0003', 1100, 450, 5.);

-- update datas
UPDATE drafts 
SET customer_name = 'kumaran'
WHERE id = 3;

DELETE FROM drafts
WHERE id = 3;

SELECT * FROM drafts WHERE 'address' = 'Rs Puram';

SELECT * FROM drafts WHERE 'status' = 'Final';
