CREATE DATABASE sql_project_db;
USE sql_project_db;

CREATE TABLE cleaned_sales (
    order_id VARCHAR(20),
    order_date DATE,
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    region VARCHAR(50),
    product_id VARCHAR(20),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount_pct DECIMAL(5,2),
    payment_method VARCHAR(50),
    order_status VARCHAR(50),
    sales_rep VARCHAR(50)
);