# Write your MySQL query statement below
select c.invoice_id, a.customer_name, c.price, 
count(b.contact_name) as contacts_cnt, 
count(distinct d.customer_name) as trusted_contacts_cnt
from Invoices c     
left join Customers a
    on a.customer_id = c.user_id
left join Contacts b
on a.customer_id = b.user_id
left join Customers d
on b.contact_name = d.customer_name
group by 1, 2, 3;