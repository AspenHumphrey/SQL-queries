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

    --code along version combining query and info needed from another tabel with insert
    INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
    SELECT "blah blah", 1996, 34565, "the blues co", ar.ArtistId, g.GenreId
    FROM Artist ar, Genre g
    WHERE ar.ArtistName = "The Model Citizens"
    and g.Label = "Rock"

-- Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO Song
(Title, ReleaseDate, SongLength, AlbumId, ArtistId, GenreId)
VALUES 
('look what you made me do', 01/24/1917, 1456, 29,  29, 8);


    --code along version - write a loop in JS to do inserts for you (to add more songs)
    -- change song title and songLength to make a new song by same person/album
    INSER INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
    SELECT "blooh bah", 2345, 1996, g.GenreId, ar.ArtistId, al.albumId
    FROM Artist ar, Genre g, Album al
    and g.Label = "blah"
    and al.title = "blah blah"

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.
        -- notes from readme--> 
        SELECT a.Title, s.Title 
        FROM Album a 
        LEFT JOIN Song s 
        ON s.AlbumId = a.AlbumId;

    --notes from code along -->Jon version   
    SELECT s.title, ar.artistname, al.title
    FROM song s, artist ar, album al
    ON s.artistId = ar.artistId
    AND s.albumId = al.albumId
    AND ar.aristId = 30

    --notes from code along changing ON to WHERE --> chris
    SELECT s.title, ar.artistname, al.title
    FROM song s, artist ar, album al
    WHERE ar.artistName = "bloo blah"
    AND s.artistId = ar.aristId
    AND s.albumId = al.albumId

    --notes form code along --> joe
    SELECT s.title as "Song", ar.artistname, al.title as "Album"
    FROM artist ar
    JOIN Album al ON al.Artist = ar.artistID
    LEFT JOIN SONG 

-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
    SELECT COUNT (songID) "Total Songs" --(change col name)
    FROM song s
    LEFT JOIN Album a ON s.albumId = a.albumId
    GROUP BY s.albumId
    ORDER BY COUNT(songID)  --DESC backwards default ASC

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
    same as above
-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
    same as above
-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
    SELECT AlbumLength, Title
    FROM album
    WHERE AlbumLength = (SELECT MAX(albumlength) FROM album) 

    --joes way
    SELECT MAX(albumlength) as "length", title
    from album

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
    same as above 

--CODE ALONG NOTES FROM AUG 28
-- search all J Z songs 
	SELECT s.title,  a .artistname
from song s, artist a --joins two tables with ,
	WHERE a.artistname = "Jay Z" and
	s.artistId = a.artistId

-- same same but different!
SELECT s.title, a.artistname
from song s
JOIN artist a ON s.artistId = a.artistId
WHERE a.artistname = "Jay Z"

SELECT s.title, al.Title, ar.artistname
FROM artist ar, album al, LEFT JOIN song s ON al.albumId = s.albumId
WHERE ar.artistname = "Beetles"
AND al.artistID = ar.ArtistId

--adding a song without 
insert into song
(songid, artistid, title)
values (34, 6, 'hey bull dog')-- search all J Z songs 
	SELECT s.title,  a .artistname
from song s, artist a --joins two tables with ,
	WHERE a.artistname = "Jay Z" and
	s.artistId = a.artistId

same same but different!
SELECT s.title, a.artistname
from song s
JOIN artist a ON s.artistId = a.artistId
WHERE a.artistname = "Jay Z"

SELECT s.title, al.Title, ar.artistname
FROM artist ar, album al, LEFT JOIN song s ON al.albumId = s.albumId
WHERE ar.artistname = "Beetles"
AND al.artistID = ar.ArtistIdA