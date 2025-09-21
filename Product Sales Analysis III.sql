/* Write your T-SQL query statement below */
SELECT s1.product_id, 
       s1.year as first_year, 
       s1.quantity, 
       s1.price
FROM Sales s1
WHERE s1.year = (
    SELECT MIN(s2.year)
    FROM Sales s2
    WHERE s2.product_id = s1.product_id
);
