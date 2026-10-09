DROP TABLE IF EXISTS MOVIE_RATINGS;

CREATE TABLE IF NOT EXISTS MOVIE_RATINGS
(
   Poster_Link	VARCHAR(300),
   Series_Title	 VARCHAR(100),
   Released_Year  VARCHAR(30),
   Certificate	VARCHAR(30),
   Runtime	VARCHAR(30),
   Genre	VARCHAR(50),
   IMDB_Rating	DECIMAL,
   Overview	 VARCHAR(500),
   Meta_score	INT,
   Director	VARCHAR(100),
   Star1	VARCHAR(30),
   Star2	VARCHAR(30),
   Star3	VARCHAR(30),
   Star4	VARCHAR(30),
   No_of_Votes	INT,
   Gross  MONEY

);

-- ## it is not work direcctly import file 
-- COPY 
-- MOVIE_RATINGS(Poster_Link, Series_Title,	Released_Year,	Certificate,	Runtime	, Genre, IMDB_Rating , Overview, Meta_score, Director, Star1, Star2, Star3, Star4, No_of_Votes, Gross
-- )
-- FROM 'C:\Users\SACHIN SAHU\OneDrive\Music\SQL\data\SQL Mastery - All Practice Files\Excel Files\Top_1000_ IMDB.csv'
-- DELIMITER ','
-- CSV HEADER;


-- -- Basic SQL Queries


-- 1) Fetch all data from imdb table 
SELECT * FROM MOVIE_RATINGS;

-- 2) Fetch only the name and release year & Director  for all movies.
SELECT SERIES_TITLE, RELEASED_YEAR, DIRECTOR
FROM MOVIE_RATINGS;

-- 3) Fetch the name, release year and imdb rating of movies which are UA certified.
SELECT SERIES_TITLE, RELEASED_YEAR, IMDB_RATING
FROM MOVIE_RATINGS
WHERE CERTIFICATE = 'UA';


-- 4) Fetch the name and genre of movies which are UA certified and have a Imdb rating of over 8.
SELECT SERIES_TITLE, GENRE
FROM MOVIE_RATINGS
WHERE IMDB_RATING>8 AND CERTIFICATE ='UA';

-- SELECT COUNT(*)
-- FROM MOVIE_RATINGS
-- WHERE GENRE ='%Drama%';         --it show null value 

-- 5) Find out how many movies are of Drama genre.
SELECT COUNT(*)
FROM MOVIE_RATINGS
WHERE Genre like '%Drama%';


-- 6) How many movies are directed by :					
-- 'Quentin Tarantino', 'Steven Spielberg', 'Christopher Nolan',  'Rajkumar Hirani'
SELECT SERIES_TITLE,DIRECTOR
FROM MOVIE_RATINGS
WHERE UPPER(DIRECTOR) IN('QUENTIN TARANTINO', 'STEVEN SPIELBERG', 'CHIRSTOPHER NOLAN', 'RAJKUMAR HIRANI');


SELECT COUNT(*)
FROM MOVIE_RATINGS
WHERE Genre LIKE '%Drama%';

SELECT COUNT(*)
FROM MOVIE_RATINGS
WHERE Genre like '%Drama%';

SELECT SERIES_TITLE, GENRE
FROM MOVIE_RATINGS
WHERE IMDB_RATING>8 AND CERTIFICATE ='UA';