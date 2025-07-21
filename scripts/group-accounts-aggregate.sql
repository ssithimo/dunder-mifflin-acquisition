WITH account_groups AS (
    SELECT
        a.id,
        a.name,
        CASE WHEN RIGHT(a.name, 5) ILIKE 'group' THEN 'Group' ELSE 'Not Group' END AS group_status,
        SUM(o.total_amt_usd) AS total_revenue
    FROM accounts a
    JOIN orders o ON a.id = o.account_id
    GROUP BY a.id, a.name)
    
SELECT
    group_status,
	  COUNT(*) AS num_accounts,
	  AVG(total_revenue) AS avg_revenue
FROM account_groups
GROUP BY group_status