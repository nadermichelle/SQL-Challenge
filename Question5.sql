SELECT RIGHT(store_location, 2) AS store_location, sum(revenue) AS total_revenue
FROM store_revenue 
GROUP BY 1 
ORDER BY sum(revenue) DESC LIMIT 10;
