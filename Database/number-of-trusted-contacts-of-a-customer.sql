# Write your MySQL query statement below
SELECT invoice_id, 
       customer_name, 
       price, 
       COUNT(contact_name) AS contacts_cnt,
       SUM(CASE WHEN contact_email IN (SELECT email FROM Customers) THEN 1
       ELSE 0 END) AS trusted_contacts_cnt
FROM Invoices
INNER JOIN Customers
ON Invoices.user_id = Customers.customer_id
LEFT JOIN Contacts
ON Customers.customer_id = Contacts.user_id
GROUP BY invoice_id
ORDER BY invoice_id;