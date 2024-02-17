-- Checking anomalies in 'duration_ms'
SELECT *
FROM data
WHERE duration_ms < 0 OR duration_ms > 600000; 

-- List of artists who have explicit songs
SELECT DISTINCT
    artists
FROM data
WHERE explicit = 1;