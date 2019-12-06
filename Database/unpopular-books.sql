# Write your MySQL query statement below
SELECT 
    b.book_id,
    b.name
FROM
(
    SELECT
        book_id,
        SUM(quantity) as ct
    FROM orders
    WHERE dispatch_date >= DATE_SUB( "2019-06-23", INTERVAL 1 YEAR )
    GROUP BY book_id

) o
RIGHT JOIN books b
ON b.book_id = o.book_id
    WHERE b.available_from < DATE_SUB( "2019-06-23", INTERVAL 1 MONTH )
    AND (o.ct is null or o.ct <10)