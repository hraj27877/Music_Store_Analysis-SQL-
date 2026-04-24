--Q4: Which city has the best customers? We would like to throw a
--promotional Music Festival in the city we made the most money. Write a
--query that returns one city that has the highest sum of invoice totals.
--Return both the city name & sum of all invoice totals?


SELECT SUM(TOTAL) AS T, BILLING_CITY FROM INVOICE
GROUP BY BILLING_CITY
ORDER BY T DESC 
LIMIT 1