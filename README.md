# SQL-Challenge
SQL Challenge for PMG

#### Question 1: Generate a query to get the sum of the clicks of the marketing data

SELECT sum(clicks)
FROM challenge.marketing_data;

#### Question 2: Generate a query to gather the sum of revenue by store_location from the store_revenue table
SELECT RIGHT(store_location,2) , sum(revenue) AS total_revenue
FROM challenge.store_revenue
GROUP BY(store_location);

#### Question 3: Merge these two datasets so we can see impressions, clicks, and revenue together by date and geo. Please ensure all records from each table are accounted for. 
SELECT MD.date, MD.geo, sum(MD.clicks), sum(MD.impressions), sum(SR.revenue)
FROM challenge.marketing_data MD INNER JOIN challenge.store_revenue SR
ON MD.date = SR.date AND MD.geo = RIGHT(SR.store_location, 2)
GROUP BY 1,2;

#### Question 4: In your opinion, what is the most efficient store and why?
SELECT MD.geo, sum(MD.clicks), sum(MD.impressions), sum(SR.revenue), sum(SR.revenue)/sum(MD.clicks), sum(SR.revenue)/sum(MD.impressions)
FROM challenge.marketing_data MD INNER JOIN challenge.store_revenue SR ON MD.geo = RIGHT(SR.store_location, 2)
GROUP BY 1;

The most efficient store is the CA location. This is because they have the highest revenue to clicks ratio and the highest revenue to impressions ratio. This ratio is significantly higher than the TX and NY ratios. Based on the metrics provided, CA is the most efficient store location.

#### Question 5: (Challenge) Generate a query to rank in order the top 10 revenue producing states
SELECT RIGHT(store_location, 2), sum(revenue)
FROM store_revenue 
GROUP BY 1 
ORDER BY sum(revenue) DESC LIMIT 10;
