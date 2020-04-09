# Write your MySQL query statement below
select sum(TIV_2016) TIV_2016
from insurance
where TIV_2015 in (select TIV_2015 from insurance group by TIV_2015 having count(TIV_2015) > 1 )
and (LAT,LON) in (select LAT,LON from insurance group by LAT,LON having count(*) = 1)