-- create products database
-- CREATE DATABASE products;

-- create table users

 

-- insert datas
INSERT INTO users (name, email, password, phone, address) VALUES
('Ram', 'ram@gmail.com', 'password123', '9876543210', '12 Main Street, covai, Tamilnadu'),
('Arun', 'arun@gmail.com', 'password123', '9988776655', '12th Street, ganthipuram, covai, Tamilnadu'),
('Raju', 'raju@gmail.com', 'password123', '9845900210', 'Main Street, ukkadam, covai, Tamilnadu');

-- update data
UPDATE users
SET 'name' = 'Nethaji Ram'
WHERE id =1;

-- delete data
DELETE FROM users 
WHERE id = 2;

-- user from ukkadam
SELECT * FROM users WHERE 'address' = 'ukkadam';




