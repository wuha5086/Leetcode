# Write your MySQL query statement below
select a.visited_on, 
       sum(b.amount) as amount,
       round(sum(b.amount)/count(distinct b.visited_on), 2) as average_amount
from (select distinct visited_on from customer) a, 
      customer b
where datediff(a.visited_on, b.visited_on) between 0 and 6
group by a.visited_on 
having datediff(a.visited_on, min(b.visited_on))=6
order by visited_on