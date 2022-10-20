CREATE DATABASE bcmd;

CREATE TABLE Actors
(
		Id			INT				NOT NULL	IDENTITY PRIMARY KEY,
		FirstName	VARCHAR(25)		NOT NULL,
		LastName	VARCHAR(25)		NOT NULL,
		Gender		VARCHAR(10)		NULL
);

-- Pg. 31 in the book for an example



CREATE TABLE Directors
(
	Id			INT			NOT NULL	Identity Primary Key,
	FirstName	VARCHAR(25)	NOT NULL,
	LastName	VARCHAR(25)	NOT NULL,
);


CREATE TABLE Movies 
(
	Id			INT			NOT NULL	Identity Primary Key,
	Name		VARCHAR(25)	NOT NULL,
	Year		VARCHAR(25)	NOT NULL,
	Rank		INT			NOT NULL
);

-- year and rank are keywords, but not protected--

CREATE TABLE Director_Genres
(
	DirectorId		INT			NOT NULL	Identity REFERENCES Directors (Id),
	Genre			VARCHAR(30)	NOT NULL,

);

DROP TABLE Director_Genres


CREATE TABLE Movie_Directors
(
	DirectorId		INT			NOT NULL	REFERENCES Directors (Id),
	MovieId			INT			NOT NULL	REFERENCES Movies (Id)
);

CREATE TABLE Director_Genres
(
	DirectorId		INT			NOT NULL	REFERENCES Directors (Id),
	Genre			VARCHAR(30)	NOT NULL,
);


CREATE TABLE Movie_Genres
(
	MovieId		INT				NOT NULL		REFERENCES Movies (Id),
	Genre		VARCHAR(30)		NOT NULL,
);

CREATE TABLE Roles
(
	ActorId		INT			NOT NULL		REFERENCES Actors (Id),
	MovieId		INT			NOT NULL		REFERENCES Movies (Id),
	Role		VARCHAR(25)	NOT NULL,
);


INSERT INTO Actors(FirstName, LastName, Gender)
VALUES ('Brad', 'Pitt', 'male');

INSERT INTO Actors(FirstName, LastName, Gender)
VALUES ('Tom', 'Hanks', 'male');

INSERT INTO Actors(FirstName, LastName, Gender)
VALUES ('Sandra', 'Bullock', 'female');

INSERT INTO Actors(FirstName, LastName, Gender)
VALUES ('Tom', 'Hanks', 'male');

INSERT INTO Actors(FirstName, LastName, Gender)
VALUES ('Tom', 'Hanks', 'male');