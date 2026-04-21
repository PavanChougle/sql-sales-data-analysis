-- inspect dirty values
SELECT DISTINCT order_status FROM raw_sales;
SELECT DISTINCT payment_method FROM raw_sales;

-- create cleaned table
CREATE TABLE cleaned_sales AS
SELECT * FROM raw_sales;

-- standardize status
UPDATE cleaned_sales
SET order_status = 'Completed'
WHERE TRIM(LOWER(order_status)) IN ('complete', 'completed');

UPDATE cleaned_sales
SET order_status = 'Cancelled'
WHERE TRIM(LOWER(order_status)) = 'cancelled';

-- standardize payment method
UPDATE cleaned_sales
SET payment_method = 'UPI'
WHERE TRIM(LOWER(payment_method)) = 'upi';

UPDATE cleaned_sales
SET payment_method = 'Card'
WHERE TRIM(LOWER(payment_method)) = 'card';

-- remove impossible discounts
DELETE FROM cleaned_sales
WHERE discount_pct < 0 OR discount_pct > 100;

-- remove impossible quantities
DELETE FROM cleaned_sales
WHERE quantity <= 0;

-- remove null price rows
DELETE FROM cleaned_sales
WHERE unit_price IS NULL;

-- remove duplicate full rows, keep lowest row_id
DELETE c1
FROM cleaned_sales c1
JOIN cleaned_sales c2
  ON c1.order_id = c2.order_id
 AND c1.product_id = c2.product_id
 AND c1.row_id > c2.row_id;