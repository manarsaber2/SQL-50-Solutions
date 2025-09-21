/* Write your T-SQL query statement below */
 SELECT 
    ROUND(
        100.0 * COUNT(IIF(order_date = customer_pref_delivery_date, 1, NULL)) 
        / COUNT(*), 2
    ) AS immediate_percentage
FROM (
    SELECT d.*
    FROM Delivery d
    JOIN (
        SELECT customer_id, MIN(order_date) AS first_order_date
        FROM Delivery
        GROUP BY customer_id
    ) f
      ON d.customer_id = f.customer_id
     AND d.order_date = f.first_order_date
) t;
