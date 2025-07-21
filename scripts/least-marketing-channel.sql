SELECT
    region,
    channel,
    total_events
FROM (
  SELECT
      r.name AS region,
      w.channel,
      COUNT(*) AS total_events,
      RANK() OVER (PARTITION BY r.name ORDER BY COUNT(*) ASC) AS rnk
  FROM web_events w
  JOIN accounts a ON w.account_id = a.id
  JOIN sales_reps s ON a.sales_rep_id = s.id
  JOIN region r ON s.region_id = r.id
  GROUP BY r.name, w.channel ) AS sub
WHERE rnk = 1