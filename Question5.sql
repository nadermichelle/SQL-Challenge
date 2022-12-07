SELECT RIGHT(store_location, 2), sum(revenue)
FROM store_revenue 
GROUP BY 1 
ORDER BY sum(revenue) DESC LIMIT 10;