SCRIPT MINI PROJECT — PROBLEM SOLVING WITH SQL
Purpose: Generate YTD analytical outputs to support executive decision-making
Context: Sales performance, delivery quality, product contribution, sales effectiveness,
         and customer composition analysis for PT X.


-- T1 — Monthly Performance
-- Objective: Analyze monthly sales momentum in 2025.
-- Output: Monthly total orders, total revenue, and average order value.
WITH order_totals AS (
    SELECT
        o.order_id,
        DATE_TRUNC('month', o.order_date) AS month,
        SUM(od.unit_price * od.quantity * (1 - od.discount)) AS order_revenue
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    WHERE DATE_PART('year', o.order_date) = 2025
    GROUP BY o.order_id, month
)
SELECT
    month,
    COUNT(order_id) AS total_orders,
    SUM(order_revenue) AS revenue,
    AVG(order_revenue) AS avg_order_value
FROM order_totals
GROUP BY month
ORDER BY month;


-- T2 — Shipper SLA (YTD)
-- Objective: Evaluate shipping service level performance by shipper.
-- Output: Shipped orders, late orders, and late delivery rate (%), YTD.
SELECT
    s.company_name,
    COUNT(DISTINCT o.order_id) AS shipped_orders,
    COUNT(CASE WHEN o.shipped_date > o.required_date THEN 1 END) AS late_orders,
    ROUND(
        COUNT(CASE WHEN o.shipped_date > o.required_date THEN 1 END)::numeric
        / COUNT(DISTINCT o.order_id) * 100, 2
    ) AS late_rate_percent
FROM orders o
JOIN shippers s ON o.ship_via = s.shipper_id
WHERE o.shipped_date IS NOT NULL
  AND EXTRACT(YEAR FROM o.order_date) = 2025
GROUP BY s.company_name
ORDER BY late_rate_percent DESC;


-- T3 — Top 10 Products by Revenue (YTD)
-- Objective: Identify key revenue-driving products.
-- Output: Top 10 products by revenue, including category and price range.
WITH product_revenue AS (
    SELECT
        od.product_id,
        SUM(od.unit_price * od.quantity * (1 - od.discount)) AS revenue
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    WHERE EXTRACT(YEAR FROM o.order_date) = 2025
    GROUP BY od.product_id
)
SELECT
    p.product_name,
    c.category_name,
    pr.revenue,
    CASE
        WHEN p.unit_price < 10 THEN '<10'
        WHEN p.unit_price BETWEEN 10 AND 20 THEN '10-20'
        WHEN p.unit_price BETWEEN 20 AND 50 THEN '20-50'
        ELSE '>50'
    END AS price_range
FROM product_revenue pr
JOIN products p ON pr.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
ORDER BY pr.revenue DESC
LIMIT 10;


-- T4 — Sales Rep Scorecard (YTD)
-- Objective: Summarize sales performance at the individual sales representative level.
-- Output: Total orders, average order value, and percentage of high-value orders (>1000).
WITH order_totals AS (
    SELECT
        DISTINCT o.order_id,
        o.employee_id,
        SUM(od.unit_price * od.quantity * (1 - od.discount)) AS order_total
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    WHERE DATE_PART('year', o.order_date) = 2025
    GROUP BY o.order_id, o.employee_id
)
SELECT
    e.employee_id,
    e.first_name || ' ' || e.last_name AS sales_rep,
    COUNT(ot.order_id) AS total_orders,
    AVG(ot.order_total) AS avg_order_value,
    ROUND(
        SUM(CASE WHEN ot.order_total > 1000 THEN 1 ELSE 0 END)::numeric
        / COUNT(ot.order_id) * 100, 2
    ) AS big_order_percent
FROM order_totals ot
JOIN employees e ON ot.employee_id = e.employee_id
GROUP BY e.employee_id, sales_rep
ORDER BY avg_order_value DESC;


-- T5 — New vs Loyal Customers (YTD)
-- Objective: Understand customer composition between acquisition and retention.
-- Output: Order count and revenue segmented into NEW vs LOYAL customers, YTD.
WITH first_order AS (
    SELECT
        customer_id,
        MIN(order_date) AS first_order_date
    FROM orders
    GROUP BY customer_id
),
order_revenue AS (
    SELECT
        o.order_id,
        o.customer_id,
        o.order_date,
        SUM(od.unit_price * od.quantity * (1 - od.discount)) AS revenue
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    WHERE DATE_PART('year', o.order_date) = DATE_PART('year', CURRENT_DATE)
    GROUP BY o.order_id, o.customer_id, o.order_date
)
SELECT
    CASE
        WHEN DATE_PART('year', fo.first_order_date) = DATE_PART('year', CURRENT_DATE)
            THEN 'NEW'
        ELSE 'LOYAL'
    END AS segment,
    COUNT(orv.order_id) AS orders,
    SUM(orv.revenue) AS revenue
FROM order_revenue orv
JOIN first_order fo ON orv.customer_id = fo.customer_id
GROUP BY segment;
