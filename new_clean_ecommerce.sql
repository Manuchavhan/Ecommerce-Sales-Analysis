CREATE OR REPLACE VIEW clean_ecommerce AS
SELECT 
    order_id,
    TO_DATE(order_date, 'MM/DD/YYYY') AS order_date,
    customer_id,
    product_category,
    region,
    quantity,
    unit_price,
    discount,
    payment_method,
    delivery_days,
    customer_rating,
    revenue,

    -- Derived columns
    (quantity * unit_price) AS gross_amount,
    (quantity * unit_price * discount) AS discount_amount,
    (quantity * unit_price * (1 - discount)) AS net_revenue

FROM ecommerce_sales
WHERE order_date IS NOT NULL;
--kpi 
SELECT 
    SUM(revenue) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(revenue) / COUNT(DISTINCT order_id) AS avg_order_value
FROM clean_ecommerce;

--time based analysis--
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(revenue) AS revenue
FROM clean_ecommerce
GROUP BY month
ORDER BY month;

--product insights--
SELECT 
    product_category,
    SUM(revenue) AS revenue,
    SUM(quantity) AS total_units,
    AVG(customer_rating) AS avg_rating
FROM clean_ecommerce
GROUP BY product_category
ORDER BY revenue DESC;

--missing payment--

SELECT 
    payment_method,
    SUM(revenue) AS revenue,
    COUNT(*) AS transactions
FROM clean_ecommerce
GROUP BY payment_method
ORDER BY revenue DESC;

--region analysis--
SELECT 
    region,
    SUM(revenue) AS revenue,
    COUNT(DISTINCT order_id) AS orders
FROM clean_ecommerce
GROUP BY region
ORDER BY revenue DESC;

--top customers--

SELECT 
    customer_id,
    SUM(revenue) AS total_spent,
    COUNT(DISTINCT order_id) AS orders
FROM clean_ecommerce
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

select * from ecommerce_sales;

select * from clean_ecommerce;