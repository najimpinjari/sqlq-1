use piramalemployee
go
CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL
);

INSERT INTO Artists (artist_id, artist_name, genre)
VALUES (1, 'Taylor Swift', 'Pop'),
       (2, 'Kendrick Lamar', 'Hip Hop'),
       (3, 'Ed Sheeran', 'Pop');

CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    album_name VARCHAR(255) NOT NULL,
    release_year INT NOT NULL,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

INSERT INTO Albums (album_id, album_name, release_year, artist_id)
VALUES (1, '1989', 2014, 1),
       (2, 'To Pimp a Butterfly', 2015, 2),
       (3, 'Divide', 2017, 3),
       (4, 'Red', 2012, 1),
       (5, 'DAMN.', 2017, 2);


	   select * from Artists
	   select * from Albums
	   --problem questions----
--1--Retrieve the names of all artists in the table.

 select Artists.artist_name from Artists

--2--List the album names and their release years.

select album_name,release_year from Albums

--3--Display the names of artists whose genre is 'Pop'.

select artist_name from Artists
where  genre = 'Pop'

--4--Find the total count of albums in the table.

select count(album_id) as total_count_ofAlbum
 from Albums 

--5--Display the album names released after 2014.

select album_name from Albums
where release_year = 2014

--6--List the names of the artists along with the number of albums they have released.

select Artists.artist_name , count(album_id)
from Albums
 join Artists
on Albums.artist_id = Artists.artist_id
group by artist_name

--7--Find the album name and the release year of Kendrick Lamar.
 select * from Artists
	   select * from Albums

	   select album_name,release_year 
	   from Albums
	   join Artists
	   on Albums.album_id = Artists.artist_id
	   where Albums.album_id = 2 
	   
--8--Display the names of artists and their genres in alphabetical order

--List the album names and the corresponding release years in descending order of release years.
--Display the names of the artists along with the total number of albums they have released, sorted in descending order of the album count.
--Find the album names and the corresponding release years where the genre is 'Pop'.
--Retrieve the names of the artists who have released albums both in 'Pop' and 'Hip Hop' genres.
--Display the album names and their release years where the release year is between 2014 and 2017.
--Find the artist names along with the number of albums they have released in the 'Pop' genre.
--Display the album names and the corresponding release years of albums released by 'Taylor Swift'.



