# Write your MySQL query statement below
WITH a AS
(SELECT user_id, COUNT(*) AS trusted_contacts_cnt
FROM contacts
WHERE contact_email IN (SELECT email FROM customers)
GROUP BY user_id),
b AS
(SELECT user_id, COUNT(contact_email) AS contacts_cnt
FROM contacts
GROUP BY user_id)

SELECT 
    invoice_id, 
    customer_name, 
    price, 
    ifnull(contacts_cnt,0) AS contacts_cnt,
    ifnull(trusted_contacts_cnt,0) AS trusted_contacts_cnt
FROM invoices i 
LEFT JOIN customers c ON i.user_id=c.customer_id
LEFT JOIN a ON i.user_id=a.user_id
LEFT JOIN b ON i.user_id=b.user_id
ORDER BY invoice_id
