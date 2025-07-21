SELECT
    EXTRACT(YEAR FROM occurred_at) AS year,
    SUM(total) AS units
FROM orders
WHERE EXTRACT(YEAR FROM occurred_at) IN (2014, 2015, 2016)
GROUP BY year
ORDER BY year