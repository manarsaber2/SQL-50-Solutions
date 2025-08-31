/* Write your T-SQL query statement below */
select * from Cinema where not description ='boring' and id%2=1
order by rating desc;