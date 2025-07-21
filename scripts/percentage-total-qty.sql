SELECT
    SUM(standard_qty) AS std_total,
    SUM(gloss_qty) AS gloss_total,
    SUM(poster_qty) AS poster_total,
    100.0 * SUM(standard_qty) / SUM(total) AS pcntg_std,
    100.0 * SUM(gloss_qty) / SUM(total) AS pcntg_gloss,
    100.0 * SUM(poster_qty) / SUM(total) AS pcntg_poster
FROM orders