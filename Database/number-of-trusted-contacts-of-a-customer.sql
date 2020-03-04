# Write your MySQL query statement below
select invoice_id, customer_name, price,
count(c.user_id) as contacts_cnt,
sum(case when c.contact_name in (select customer_name from Customers) then 1 else 0 end) as trusted_contacts_cnt
from Invoices a left join Customers b on a.user_id = b.customer_id
left join Contacts c on b.customer_id = c.user_id
group by invoice_id, customer_name