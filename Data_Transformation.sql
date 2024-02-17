-- This query creates a new column based on the tempo 
SELECT
    id,
    name AS song_name,
    tempo,
    CASE
        WHEN tempo < 100 THEN 'Slow'
        WHEN tempo >= 100 AND tempo < 120 THEN 'Medium'
        ELSE 'Fast'
    END AS tempo_category
FROM data;