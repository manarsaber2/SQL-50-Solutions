/* Write your T-SQL query statement below */
SELECT 
    ROUND(
        1.0 * COUNT(IIF(a2.event_date = DATEADD(day, 1, a1.event_date), 1, NULL)) 
        / COUNT(DISTINCT a1.player_id), 
    2
    ) AS fraction
FROM Activity a1
JOIN Activity a2
  ON a1.player_id = a2.player_id
WHERE a1.event_date = (
    SELECT MIN(event_date) 
    FROM Activity 
    WHERE player_id = a1.player_id
);
