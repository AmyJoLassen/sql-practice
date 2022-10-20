INSERT INTO directors_genres (DirectorId, Genre) -- I need some more data, because my directors actually make movies of many genres!
VALUES 
	(3, 'Action'),
	(2, 'Adventure'),
	(2, 'Fantasy'),
	(2, 'Romance'),
	(3, 'Fantasy'),
	(3, 'Family'),
	(3, 'Suspense');
	
	select * from directors_genres

	SELECT D.FirstName, D.LastName, DG.Genre FROM directors D, directors_genres DG

SELECT D.FirstName, D.LastName, DG.Genre
FROM directors D
INNER JOIN directors_genres DG
ON D.Id	= DG.DirectorId;

SELECT D.FirstName, D.LastName, DG.Genre
FROM directors D
LEFT JOIN directors_genres DG
ON D.Id	= DG.DirectorId;

SELECT D.FirstName, D.LastName, DG.Genre
FROM directors D
RIGHT JOIN directors_genres DG
ON D.Id	= DG.DirectorId;

SELECT D.FirstName, D.LastName, DG.Genre
FROM directors D
FULL OUTER JOIN directors_genres DG
ON D.Id	= DG.DirectorId;

SELECT D.FirstName, D.LastName, COUNT(DG.Genre) AS 'Number of Genres'
FROM directors D
INNER JOIN directors_genres DG
ON D.Id	= DG.DirectorId
GROUP BY FirstName, LastName;

INSERT INTO movies (name, year)

select * from actors, directors, movies, movies_genre

SELECT m.Id, m.Name, mg.Genre, m.Rank
FROM movies m
inner join movies_genre mg
ON m.ID = mg.movieid;
VALUES ('A Bug''s Life', 1998)