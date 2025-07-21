SELECT
    ROUND(SUM(standard_amt_usd) * 100.0 / SUM(total_amt_usd), 2) AS rev_pcntg_std,
    ROUND(SUM(gloss_amt_usd) * 100.0 / SUM(total_amt_usd), 2) AS rev_pcntg_gloss,
    ROUND(SUM(poster_amt_usd) * 100.0 / SUM(total_amt_usd), 2) AS rev_pcntg_poster
FROM orders