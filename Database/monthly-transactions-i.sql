# Write your MySQL query statement below
SELECT
                month,
	country,
	count(*) as trans_count,
	SUM(CASE state WHEN 'approved' THEN 1 ELSE 0 END) AS approved_count,
	SUM(amount) AS trans_total_amount,
	SUM(CASE state WHEN 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM 
	(
	SELECT country,state,amount,DATE_FORMAT(trans_date,'%Y-%m') AS month
	FROM transactions
	) a
	GROUP BY month, country;