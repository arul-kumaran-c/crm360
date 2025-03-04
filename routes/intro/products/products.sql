-- CREATE DATABASE
CREATE DATABASE test;

-- CREATE TABLE
CREATE TABLE products(
id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(255) NOT NULL,
category ENUM('solid', 'liquid', 'gas', 'ceramic', 'stationery', 'electronics', 'accessories', 'wearable', 'fashion', 'clothing', 'footwear', 'home appliance') NOT NULL,
quantity DECIMAL(10,2) DEFAULT 0 NOT NULL,
price DECIMAL(10,2) DEFAULT 0 NOT NULL,
sku VARCHAR(255) NOT NULL,
mfg_date DATE NOT NULL,
exp_date DATE NOT NULL,
about_product TEXT
);

-- INSERT DATA

-- INSERT INTO products('product_name', 'category', 'quantity', 'price', 'sku', 'mfg_date', 'exp_date', 'about_product')
--  VALUES('Bottle', 'solid', 5, 200, 'BTL', '2024-09-24', '2026-10-20', 'This bottle is made up of stainless steel.' );

INSERT INTO products (product_name, category, quantity, price, sku, mfg_date, exp_date, about_product) 
VALUES 
('Bottle', 'solid', 5, 200, 'BTL01', '2024-09-24', '2026-10-20', 'This bottle is made up of stainless steel.'),
('Mug', 'ceramic', 10, 150, 'MUG01', '2024-08-15', '2027-08-15', 'A high-quality ceramic mug.'),
('Notebook', 'stationery', 50, 50, 'NBK01', '2024-06-10', '2030-06-10', 'A 200-page ruled notebook.'),
('Pen', 'stationery', 100, 20, 'PEN01', '2024-07-05', '2030-07-05', 'A smooth-writing ballpoint pen.'),
('Mouse', 'electronics', 15, 800, 'MSE01', '2024-04-12', '2029-04-12', 'A wireless optical mouse.'),
('Keyboard', 'electronics', 10, 1200, 'KYB01', '2024-03-20', '2029-03-20', 'A mechanical keyboard with RGB lights.'),
('Phone Case', 'accessories', 30, 300, 'PC001', '2024-02-10', '2027-02-10', 'Silicone protective phone case.'),
('Charger', 'electronics', 25, 700, 'CHR01', '2024-05-18', '2029-05-18', 'A fast-charging USB charger.'),
('Headphones', 'electronics', 12, 2500, 'HP001', '2024-01-22', '2029-01-22', 'Over-ear noise-canceling headphones.'),
('Smart Watch', 'wearable', 8, 5000, 'SW001', '2024-06-05', '2029-06-05', 'A fitness-tracking smartwatch.'),
('Sunglasses', 'fashion', 20, 1800, 'SG001', '2024-07-15', '2028-07-15', 'UV-protected stylish sunglasses.'),
('Backpack', 'accessories', 15, 2200, 'BP001', '2024-08-10', '2029-08-10', 'Water-resistant travel backpack.'),
('T-Shirt', 'clothing', 50, 600, 'TS001', '2024-03-25', '2027-03-25', '100% cotton graphic t-shirt.'),
('Jeans', 'clothing', 30, 1800, 'JN001', '2024-02-28', '2027-02-28', 'Slim fit denim jeans.'),
('Sneakers', 'footwear', 20, 3000, 'SNK001', '2024-04-15', '2028-04-15', 'Comfortable running sneakers.'),
('Watch', 'accessories', 10, 4500, 'WT001', '2024-05-30', '2029-05-30', 'A luxury stainless steel wristwatch.'),
('Bluetooth Speaker', 'electronics', 15, 2800, 'BTS01', '2024-06-12', '2029-06-12', 'Portable Bluetooth speaker with deep bass.'),
('Power Bank', 'electronics', 20, 1500, 'PB001', '2024-07-20', '2029-07-20', '10000mAh fast-charging power bank.'),
('Coffee Maker', 'home appliance', 5, 5000, 'CM001', '2024-08-18', '2029-08-18', 'Automatic drip coffee maker.'),
('Vacuum Cleaner', 'home appliance', 8, 7500, 'VC001', '2024-09-10', '2030-09-10', 'Cordless handheld vacuum cleaner.');

-- UPDATE DATA
UPDATE products
SET 'product_name' = 'Steel Bottle'
WHERE id = 1;

-- DELETE
DELETE FROM products WHERE id = 1;


-- RETRIVE ALL DATAS
SELECT * FROM products;

-- Get products that are available in stock.
SELECT * FROM products WHERE quantity > 0;

-- Find products with a price greater than 5000.
SELECT * FROM products WHERE price > 5000;

-- Retrieve products that belong to a specific category.

SELECT * FROM products WHERE category = ?;

-- Get the latest added products ordered by creation date.
SELECT * FROM products ORDER BY creation_date DESC;

-- UPDATE the price of a product based on SKU. 
UPDATE products 
SET price = 220
WHERE sku = BTL01;

-- Mark a product as unavailable if stock is 0.
UPDATE products 
SET status = 'unavailable' 
WHERE quantity = 0;

-- Apply a 10% discount on all Electronics category products.
PDATE products 
SET price = price * 0.90 
WHERE sku = 'BTS01';

-- Count the total number of available products.
SELECT COUNT(*) AS total_available_products 
FROM products 
WHERE quantity > 0;

-- Find the most expensive product
SELECT * 
FROM products 
ORDER BY price DESC 
LIMIT 1;

-- Get the average price of all products in each category.
SELECT category, AVG(price) AS average_price 
FROM products 
GROUP BY category;

