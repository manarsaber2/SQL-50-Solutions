/* Write your T-SQL query statement below */
SELECT product_id, new_price AS price
FROM Products p1
WHERE change_date = (
    SELECT MAX(change_date)
    FROM Products p2
    WHERE p1.product_id = p2.product_id
      AND p2.change_date <= '2019-08-16'
)
UNION

SELECT DISTINCT p.product_id, 10 AS price
FROM Products p
WHERE NOT EXISTS (
    SELECT 1
    FROM Products p2
    WHERE p2.product_id = p.product_id
      AND p2.change_date <= '2019-08-16'
);