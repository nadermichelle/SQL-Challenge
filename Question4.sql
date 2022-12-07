SELECT MD.geo, sum(MD.clicks) AS total_clicks, sum(MD.impressions) AS total_impressions, sum(SR.revenue) AS total_revenue, sum(SR.revenue)/sum(MD.clicks) AS revenue_clicks_ratio, sum(SR.revenue)/sum(MD.impressions) AS revenue_impressions_ratio
FROM challenge.marketing_data MD INNER JOIN challenge.store_revenue SR ON MD.geo = RIGHT(SR.store_location, 2)
GROUP BY 1;
