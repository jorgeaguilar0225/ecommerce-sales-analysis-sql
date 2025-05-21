-- Insert data into customers
INSERT INTO customers (customer_id, name, region) VALUES 
('CUS1001', 'Alice Johnson', 'North'),
('CUS1002', 'Bob Smith', 'South'),
('CUS1003', 'Charlie Lee', 'East'),
('CUS1004', 'Diana Reyes', 'West'),
('CUS1005', 'Ethan Zhang', 'Central');

-- Insert data into products
INSERT INTO products (product_id, name, category, price) VALUES 
('PRD3001', 'Laptop', 'Electronics', 1200.00),
('PRD3002', 'Wireless Headphones', 'Electronics', 150.00),
('PRD3003', 'Coffee Maker', 'Home Appliances', 85.00),
('PRD3004', 'Desk Chair', 'Furniture', 200.00),
('PRD3005', 'Standing Desk', 'Furniture', 400.00);

-- Insert data into orders
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES 
('ORD2001', 'CUS1001', '2024-11-01', 1350.00),
('ORD2002', 'CUS1002', '2024-11-03', 85.00),
('ORD2003', 'CUS1003', '2024-11-05', 1400.00),
('ORD2004', 'CUS1001', '2024-12-01', 400.00),
('ORD2005', 'CUS1004', '2024-12-15', 600.00);

-- Insert data into order_items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES 
('ITM4001', 'ORD2001', 'PRD3001', 1),  -- Laptop
('ITM4002', 'ORD2001', 'PRD3002', 1),  -- Headphones
('ITM4003', 'ORD2002', 'PRD3003', 1),  -- Coffee Maker
('ITM4004', 'ORD2003', 'PRD3001', 1),  -- Laptop
('ITM4005', 'ORD2003', 'PRD3004', 1),  -- Desk Chair
('ITM4006', 'ORD2004', 'PRD3005', 1),  -- Standing Desk
('ITM4007', 'ORD2005', 'PRD3005', 1),  -- Standing Desk
('ITM4008', 'ORD2005', 'PRD3002', 1);  -- Headphones
