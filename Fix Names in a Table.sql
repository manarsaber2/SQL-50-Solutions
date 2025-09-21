/* Write your T-SQL query statement below */

SELECT 
    user_id, 
    upper(LEFT(name, 1))+lower(SUBSTRING(name, 2, LEN(name)))
    as name
FROM Users
order by user_id;
