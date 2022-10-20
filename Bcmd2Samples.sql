SELECT * FROM movies_genre;

SELECT * FROM actors

SELECT FirstName, LastName FROM actors WHERE FirstName = 'Harrison';

SELECT DISTINCT FirstName, LastName FROM actors

SELECT FirstName, LastName FROM actors WHERE FirstName = 'Harrison' AND LastName = 'Ford';
SELECT FirstName, LastName FROM actors WHERE FirstName = 'Harrison' OR FirstName = 'Tom';
SELECT FirstName, LastName FROM actors WHERE NOT FirstName = 'Harrison';

SELECT * FROM actors WHERE FirstName = 'Harrison' AND NOT Id = 5;

SELECT * FROM directors;

SELECT * FROM directors WHERE FirstName IN ('Robert', 'Steven');

SELECT * FROM movies

SELECT * FROM movies WHERE Rank BETWEEN 200 AND 500;
SELECT * FROM movies WHERE Rank IN (200, 500, 301);


SELECT 
MAX(Rank) AS 'MaxRank',
MIN(Rank) AS 'MinRank',
AVG(Rank) AS 'AverageRank',
COUNT(*) AS 'TotalMovies',
COUNT(Rank) AS 'AllRankedRecords'
from movies;


--JOIN SELECT examples--

select * from directors_genres

SELECT D.FirstName, D.LastName, DG.Genre FROM directors D, directors_genres DG

-- INNER JOIN EXAMPLE --
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

-- LEFT JOIN EXAMPLE --
SELECT D.FirstName, D.LastName, DG.Genre
FROM directors D
LEFT JOIN directors_genres DG
ON D.Id	= DG.DirectorId;

SELECT D.FirstName, D.LastName, DG.Genre
FROM directors D
RIGHT JOIN directors_genres DG
ON D.Id	= DG.DirectorId;

SELECT D.FirstName, D.LastName, COUNT(DG.Genre) AS 'Number of Genres'
FROM directors D
INNER JOIN directors_genres DG
ON D.Id	= DG.DirectorId
GROUP BY FirstName, LastName
HAVING count (dg.genre) > 2;

SELECT D.FirstName, D.LastName, COUNT(DG.Genre) AS 'Number of Genres'
FROM directors D
INNER JOIN directors_genres DG
ON D.Id	= DG.DirectorId
GROUP BY FirstName, LastName
ORDER BY count (dg.genre) ASC;

SELECT * FROM Movies

SELECT m.Id, m.Name, mg.Genre, m.Rank
FROM movies m
inner join movies_genre mg
ON m.ID = mg.movieid
WHERE m.rank >
		(SELECT AVG(Rank)
		FROM movies		
		);








