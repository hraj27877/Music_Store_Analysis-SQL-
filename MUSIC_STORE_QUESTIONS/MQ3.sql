--Q3: Return the Name and Milliseconds tor each track. Order by the song length with the longest songs
--listed first.

SELECT name, miliseconds
FROM track
WHERE miliseconds > (
SELECT AVG(miliseconds) AS avg_track_length
FROM track)
ORDER BY miliseconds DESC;