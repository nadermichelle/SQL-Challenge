SELECT MD.geo, sum(MD.clicks), sum(MD.impressions), sum(SR.revenue), sum(SR.revenue)/sum(MD.clicks), sum(SR.revenue)/sum(MD.impressions)
FROM challenge.marketing_data MD INNER JOIN challenge.store_revenue SR ON MD.geo = RIGHT(SR.store_location, 2)
GROUP BY 1;