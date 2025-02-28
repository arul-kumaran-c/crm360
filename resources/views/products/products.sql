-- CREATE DATABASE
CREATE DATABASE test;

-- CREATE TABLE
CREATE TABLE products(
id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(255) NOT NULL,
category ENUM('solid', 'liquid', 'gas') NOT NULL,
quantity DECIMAL(10,2) DEFAULT 0 NOT NULL,
price DECIMAL(10,2) DEFAULT 0 NOT NULL,
sku INT NOT NULL,
mfg_date DATE NOT NULL,
exp_date DATE NOT NULL,
about_product text,
);

-- INSERT DATA
INSERT INTO products('product_name', 'category', 'quantity', 'price', 'sku', 'mfg_date', 'exp_date', 'about_product')
 VALUES('Bottle', 'solid', 5, 200, 'BTL', '2024-09-24', '2026-10-20', 'This bottle is made up of stainless steel.' );

-- UPDATE DATA
UPDATE products
SET 'product_name' = 'Steel Bottle'
WHERE id = 1;

-- DELETE
DELETE FROM products WHERE id = 1;