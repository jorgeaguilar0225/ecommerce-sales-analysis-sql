-- ==============================================
-- E-COMMERCE SALES ANALYSIS QUERIES
-- ==============================================

-- 1. Total Sales by Region
-- Objective: See how much revenue each region generated overall
SELECT customers.region, SUM(orders.total_amount) AS total_sales
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customers.region
ORDER BY total_sales DESC;

-- ------------------------------------------------

-- 2. Top-Selling Products by Quantity
-- Objective: Identify which products sold the most units
SELECT products.name AS product_name, SUM(order_items.quantity) AS total_quantity_sold
FROM order_items
JOIN products ON order_items.product_id = products.product_id
GROUP BY products.name
ORDER BY total_quantity_sold DESC;

-- ------------------------------------------------

-- 3. Monthly Sales Trends
-- Objective: Track total revenue month by month
SELECT DATE_FORMAT(orders.order_date, '%Y-%m') AS month, SUM(orders.total_amount) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

-- ------------------------------------------------

-- 4. Average Order Value by Region
-- Objective: Identify which regions tend to place higher-value orders
SELECT customers.region, ROUND(AVG(orders.total_amount), 2) AS avg_order_value
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customers.region
ORDER BY avg_order_value DESC;

-- ------------------------------------------------

-- 5. Top Customers by Total Spend
-- Objective: Find the customers who spent the most overall
SELECT customers.name AS customer_name, SUM(orders.total_amount) AS total_spent
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customers.name
ORDER BY total_spent DESC;

-- ==============================================
-- End of Analysis Queries
-- ==============================================
