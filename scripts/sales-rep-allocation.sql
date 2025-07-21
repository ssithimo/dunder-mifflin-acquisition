SELECT
    region.name,
    COUNT(sales_reps.id)
FROM sales_reps
RIGHT JOIN region ON sales_reps.region_id = region.id
GROUP BY region.name
ORDER BY region.name ASC