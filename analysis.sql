-- 1 total cleaned rows 
SELECT count(*) AS total_rows FROM cleaned_sales

-- 2 completed vs cancelled orders
SELECT order_status, COUNT(*) AS total_orders 
FROM cleaned_sales 
group by order_status;

-- 3 total revenue
SELECT 
    ROUND(SUM(quantity * unit_price * (1 - discount_pct / 100)),
            2) AS total_revenue
FROM
    cleaned_sales
WHERE
    order_status = 'Completed';

-- 4 top 5 products by revenue
SELECT 
    product_name,
    category,
    COUNT(*) AS order_count,
    SUM(quantity) AS total_quantity_sold,
    ROUND(SUM(quantity * unit_price * (1 - discount_pct / 100)),
            2) AS total_revenue
FROM
    cleaned_sales
WHERE
    order_status = 'Completed'
GROUP BY product_name , category
ORDER BY total_revenue DESC
LIMIT 5;

-- 5 top 5 customers
SELECT 
    customer_name,
    ROUND(SUM(quantity * unit_price * (1 - discount_pct / 100)),
            2) AS total_revenue
FROM
    cleaned_sales
WHERE
    order_status = 'Completed'
GROUP BY customer_name
ORDER BY total_revenue DESC
LIMIT 5;

-- 6 monthly sales trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    ROUND(SUM(quantity * unit_price * (1 - discount_pct / 100)),
            2) AS monthly_revenue
FROM
    cleaned_sales
WHERE
    order_status = 'Completed'
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY sales_month;

-- 7 revenue by region
SELECT 
    region,
    ROUND(SUM(quantity * unit_price * (1 - discount_pct / 100)),
            2) AS region_revenue
FROM
    cleaned_sales
WHERE
    order_status = 'Completed'
GROUP BY region
ORDER BY region_revenue DESC;

-- 8 category performance
SELECT 
    category,
    ROUND(SUM(quantity * unit_price * (1 - discount_pct / 100)),
            2) AS category_revenue
FROM
    cleaned_sales
WHERE
    order_status = 'Completed'
GROUP BY category
ORDER BY category_revenue DESC;

-- 9 payment method usage
SELECT 
    payment_method, COUNT(*) AS total_orders
FROM
    cleaned_sales
GROUP BY payment_method
ORDER BY total_orders DESC;

-- 10 average order value by product
SELECT 
    product_name,
    ROUND(AVG(quantity * unit_price * (1 - discount_pct / 100)),
            2) AS avg_order_value
FROM
    cleaned_sales
WHERE
    order_status = 'Completed'
GROUP BY product_name
ORDER BY avg_order_value DESC;