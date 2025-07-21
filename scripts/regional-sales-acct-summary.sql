SELECT
    region.name AS region,
    COUNT(DISTINCT o.id) AS total_orders,
    COUNT(DISTINCT s.id) AS reps,
    COUNT(DISTINCT o.account_id) AS accounts,
    SUM(o.total_amt_usd) AS revenue,
    ROUND(AVG(o.total_amt_usd), 2) AS avg_order_revenue
FROM region
FULL JOIN sales_reps s ON region.id = s.region_id
FULL JOIN accounts a ON a.sales_rep_id = s.id
FULL JOIN orders o ON a.id = o.account_id
WHERE EXTRACT(YEAR FROM occurred_at) = 2016
GROUP BY region