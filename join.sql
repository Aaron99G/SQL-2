-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * FROM invoice_line
    WHERE unit_price > 0.99;
-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT i.invoice_date, c.first_name, c.last_name, i.total
    FROM invoice i 
    JOIN customer c
    ON i.customer_id = c.customer_id;
-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers.
-- Support reps are on the employee table.
SELECT c.first_name as customer_name, c.last_name as customer_last_name,e.first_name as employee_name, e.last_name as employee_last_name
    FROM customer c
    JOIN employee e 
    ON c.support_rep_id = e.employee_id;
-- Get the album title and the artist name from all albums.
SELECT a.title, art.name
	FROM album a
	JOIN artist art
	ON a.artist_id = art.artist_id;
-- Get all playlist_track track_ids where the playlist name is Music.
SELECT p.playlist_track_id
    FROM playlist_track p
    JOIN playlist pl
    ON p.playlist_id = pl.playlist_id
    WHERE name = 'Music';
-- Get all track name`s for `playlist_id.
SELECT t.name
    FROM track t 
    JOIN playlist_track pt
    ON t.track_id = pt.track_id
    JOIN playlist p
    ON p.playlist_id = pt.playlist_id;
-- Get all track name`s and the playlist `name that they’re on ( 2 joins ).
SELECT t.name as track_name, p.name as playlist_name
    FROM track t 
    JOIN playlist_track pt
    ON t.track_id = pt.track_id
    JOIN playlist p
    ON p.playlist_id = pt.playlist_id;
-- Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).
SELECT t.name as track_name, a.title as album_title
  FROM track t 
  JOIN album a
  ON t.album_id = a.album_id
  JOIN genre g
  ON g.genre_id = t.genre_id
  WHERE g.name = 'Alternative & Punk';