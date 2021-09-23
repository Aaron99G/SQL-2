-- Create a view called rock that selects all the tracks where the genre is Rock.
CREATE VIEW rock AS 
	SELECT *
	FROM track
  WHERE	genre_id IN (
  SELECT genre_id	FROM genre	WHERE name = 'Rock'
  );

--   Create a view called classical_count that gets a count of all the tracks from the playlist called Classical.
CREATE VIEW classical_count AS
	SELECT COUNT(*) FROM playlist
    WHERE name = 'Classical';