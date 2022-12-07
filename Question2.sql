SELECT RIGHT(store_location,2) , sum(revenue) AS total_revenue
FROM challenge.store_revenue
GROUP BY(store_location);