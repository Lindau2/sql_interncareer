-- calculate the monthly average danceability for songs in the "data" table
SELECT
    CASE
        WHEN CHAR_LENGTH(d.release_date) = 4 THEN STR_TO_DATE(CONCAT(d.release_date, '-01-01'), '%d-%m-%Y')
        ELSE STR_TO_DATE(d.release_date, '%d-%m-%Y')
    END AS release_date,
    AVG(d.danceability) AS avg_danceability
FROM data d
GROUP BY release_date
ORDER BY release_date;