-- 14) show me both value (max , min value) in one sigle row

 select min(imdb_rating) as min_max, max(imdb_rating) as maximum value
 from movie_ratings;


-- 15) show both value in different row 

select max(imdb_rating) as min_max
from movie_ratings
union
select min(imdb_rating) 
from movie_ratings;

-- 16) add row headings or row tittle for each value

select min(imdb_rating) as value, 'min_value' as min_max
from movie_ratings
union
select max(imdb_rating),'max_value'
from movie_ratings;

