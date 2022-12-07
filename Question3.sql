SELECT MD.date, MD.geo, sum(MD.clicks) as total_clicks, sum(MD.impressions) as total_impressions, sum(SR.revenue) as total_revenue
FROM challenge.marketing_data MD INNER JOIN challenge.store_revenue SR
ON MD.date = SR.date AND MD.geo = RIGHT(SR.store_location, 2)
GROUP BY 1,2;
