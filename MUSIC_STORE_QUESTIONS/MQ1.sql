
--Q1: Write query to return the email, first name, last name, & Genre 
--of all Rock Music listeners. Return your list ordered alphabetically 
--by email starting with A




SELECT 
    CUSTOMER.FIRST_NAME, 
    CUSTOMER.LAST_NAME, 
    CUSTOMER.EMAIL,
    GENRE.NAME AS GENRE
FROM CUSTOMER
JOIN INVOICE 
    ON INVOICE.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID
JOIN INVOICE_LINE 
    ON INVOICE.INVOICE_ID = INVOICE_LINE.INVOICE_ID
JOIN TRACK 
    ON TRACK.TRACK_ID = INVOICE_LINE.TRACK_ID
JOIN GENRE 
    ON GENRE.GENRE_ID = TRACK.GENRE_ID
WHERE GENRE.NAME = 'Rock'
ORDER BY CUSTOMER.EMAIL;