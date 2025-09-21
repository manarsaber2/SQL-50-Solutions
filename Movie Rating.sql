# Write your MySQL query statement below
(
    SELECT 
        U.name AS results
    FROM Users U
    JOIN MovieRating R ON U.user_id = R.user_id
    GROUP BY U.user_id
    ORDER BY COUNT(U.user_id) DESC, U.name ASC LIMIT 1
)

UNION ALL

(
    SELECT 
        M.title AS results
    FROM Movies M
    JOIN MovieRating R ON M.movie_id = R.movie_id
    WHERE R.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY M.movie_id, M.title
    ORDER BY AVG(R.rating) DESC, M.title ASC LIMIT 1
)

    