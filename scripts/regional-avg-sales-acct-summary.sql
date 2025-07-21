WITH region_table AS (
	SELECT
		r.id AS region_id,
		r.name AS region_name,
		COUNT(DISTINCT o.id) AS total_orders_per_region,
		COUNT(DISTINCT s.id) AS reps_per_region,
		COUNT(DISTINCT o.account_id) AS accts_per_region,
		SUM(o.total_amt_usd) AS total_rev_per_region,
		ROUND(AVG(o.total_amt_usd), 2) AS avg_rev_perorder_perregion
	FROM region AS r
		JOIN sales_reps AS s ON r.id = s.region_id
		JOIN accounts AS a ON s.id = a.sales_rep_id
		JOIN orders AS o ON a.id = o.account_id
	WHERE EXTRACT(YEAR FROM occurred_at) = 2016
	GROUP BY r.id, r.name)
SELECT
	region_id,
	region_name,
    ROUND((total_orders_per_region)/(reps_per_region)) AS avg_orders_per_rep_across_all_reps,
    ROUND((accts_per_region)/(reps_per_region)) AS avg_accounts_per_rep_across_all_reps,
    ROUND((total_rev_per_region)/(reps_per_region), 2) AS avg_revenues_per_rep_across_all_reps
FROM
    region_table