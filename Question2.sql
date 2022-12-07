SELECT RIGHT(store_location, 2) AS store_location , sum(revenue)
FROM challenge.store_revenue
GROUP BY(store_location);
