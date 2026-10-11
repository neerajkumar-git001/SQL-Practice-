select *
from movie_ratings;

--10) display all movie name who does not receive certificate
select Series_Title, certificate
from Movie_Ratings
Where Certificate is Null;

--11) display all movie name who does received certificate
 Select Series_Title, Certificate
 from Movie_Ratings
 Where Certificate is Not Null;

 --12) display all movie name who does received certificate other then A and UA
 
 Select Series_Title, Certificate
 from Movie_Ratings
 Where Certificate Not in ('A', 'UA');        -- Done


 Select Series_Title, Certificate
 from Movie_Ratings
 Where Certificate  in ('A', 'UA');           --Done

 --13) Display all the movie Apart from crime genre 
Select Series_Title, Genre
From Movie_Ratings
Where Genre Not like('%Crime%');         --Done

select Series_Title, Genre
From movie_Ratings
Where Genre like('%Crime%');               --Done

select Series_Title, Genre
From Movie_Ratings
Where Genre ='%Crime%'        -- it show onlt structure not include details 


select Series_Title, Genre
From Movie_Ratings
Where Genre = 'Crime'                 -- it show onlt structure not include details 
                                

Select Series_Title, Genre
From Movie_Ratings
Where Genre !='%Crime%'               -- it print all details only for (Series Title , Genre )


Select Series_Title, Genre
From Movie_Ratings
Where Genre <>'%Crime%'              -- it is also print all details only for (Series Title , Genre )
