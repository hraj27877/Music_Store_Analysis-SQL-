--Q2: Let's invite the artists who have written the most rock music in
--Our dataset. Write a query that returns the Artist name and total
--Track count of the top 10 rock bands



SELECT 
    ARTIST.ARTIST_ID,
    ARTIST.NAME,
    COUNT(TRACK.TRACK_ID) AS TOTAL_SONG
FROM ARTIST
JOIN ALBUM 
    ON ALBUM.ARTIST_ID = ARTIST.ARTIST_ID 
JOIN TRACK 
    ON TRACK.ALBUM_ID = ALBUM.ALBUM_ID 
JOIN GENRE 
    ON GENRE.GENRE_ID = TRACK.GENRE_ID 
WHERE GENRE.NAME = 'Rock'
GROUP BY ARTIST.ARTIST_ID, ARTIST.NAME
ORDER BY TOTAL_SONG DESC
LIMIT 10;