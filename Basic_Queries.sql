-- Table structure
DESCRIBE spotify_data.data;

-- Checking for duplicate rows
SELECT id, COUNT(*)
FROM spotify_data.data
GROUP BY id
HAVING COUNT(*) > 1;

