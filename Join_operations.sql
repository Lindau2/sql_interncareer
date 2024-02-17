-- Retrieving the average play count for each artist
SELECT data.artists, AVG(data.popularity) AS avg_popularity
FROM data
GROUP BY data.artists;
