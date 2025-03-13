CREATE TABLE categories(
    id INT PRIMARY KEY AUTOINCREMENT,
    product_name VARCHAR(255) NOT NULL,
    sku VARCHAR(255) UNIQUE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    discount_price DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    stock_quantity INT DEFAULT 0,
    stock_status ENUM('In Stock', 'Out of Stock') NOT NULL DEFAULT 'In Stock',
);

INSERT INTO categories('product_name', 'sku', 'price', 'discount_price', 'stock_quantity', 'stock_status')

VALUES ('Smartphone X', 'SPX123', 999.99, 899.99, 50, 'In Stock');

UPDATE categories
SET 'product_name' = 'Phone'
WHERE id = 1;

DELETE FROM categories WHERE id = 1;