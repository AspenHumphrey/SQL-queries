-- Query all of the entries in the Genre table
SELECT * FROM Genre
-- Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist
(ArtistName, ReleaseDate)
VALUES
('tswizzle', 1985);
-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album
( Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES 
('hello darkness my old friend', 1985, 4678, 'Disney',  29, 8);

-- Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO Song
( Title, ReleaseDate, SongLength, AlbumId, ArtistId, GenreId)
VALUES 
('look what you made me do', 01/24/1917, 1456, 29,  29, 8);

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.
SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;

-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.


-- -- search all J Z songs 
-- 	SELECT s.title,  a .artistname
-- from song s, artist a --joins two tables with ,
-- 	WHERE a.artistname = "Jay Z" and
-- 	s.artistId = a.artistId

--same same but different!
-- SELECT s.title, a.artistname
-- from song s
-- JOIN artist a ON s.artistId = a.artistId
-- WHERE a.artistname = "Jay Z"

-- SELECT s.title, al.Title, ar.artistname
-- FROM artist ar, album al, LEFT JOIN song s ON al.albumId = s.albumId
-- WHERE ar.artistname = "Beetles"
-- AND al.artistID = ar.ArtistId

--adding a song without 
insert into song
(songid, artistid, title)
values (34, 6, 'hey bull dog')