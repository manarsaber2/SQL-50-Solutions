/* Write your T-SQL query statement below */
select s.user_id ,round(1.0*COUNT(IIF(c.action='confirmed',1,NULL))/count(*),2)
as confirmation_rate
from Signups s left join Confirmations c
on s.user_id=c.user_id
group by s.user_id;