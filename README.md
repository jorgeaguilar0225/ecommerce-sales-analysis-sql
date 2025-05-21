# 📊 E-commerce Sales Analysis Using SQL

This project simulates a sales database for a small e-commerce company. Using MySQL, I analyzed customer orders, product performance, and regional trends to answer key business questions and deliver actionable insights.

---

## 🧠 Objectives

- Analyze sales performance across regions
- Identify top-selling products
- Track monthly revenue trends
- Determine high-value customers
- Practice clean, well-commented SQL for real-world business questions

---

## 🗂️ Database Structure

The database contains four main tables:

| Table        | Description                                   |
|--------------|-----------------------------------------------|
| `customers`  | Customer details including name and region    |
| `products`   | Product catalog with category and price       |
| `orders`     | Records of customer orders with order dates   |
| `order_items`| Line-item breakdown of each order             |

> All tables use realistic, prefixed ID formats (e.g., `CUS1001`, `ORD2002`) to simulate production-like data.

---

## 📥 Sample Data

The dataset includes:
- 5 customers from different regions
- 5 products across 3 categories
- 5 customer orders with 8 total order items

You can view and run the data setup in:
- [`create_tables.sql`](./create_tables.sql)
- [`insert_data.sql`](./insert_data.sql)

---

## 🔍 Key SQL Queries & Insights

### 🟩 1. Total Sales by Region

```sql
SELECT customers.region, SUM(orders.total_amount) AS total_sales
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customers.region
ORDER BY total_sales DESC;
