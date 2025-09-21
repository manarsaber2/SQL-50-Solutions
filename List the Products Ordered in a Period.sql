# Write your MySQL query statement below
SELECT product_name,SUM(unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id =o.product_id
WHERE DATE_FORMAT(order_date,'%Y-%m') = '2020-02' 
GROUP BY o.product_id
HAVING SUM(unit) >=100