-- 17) show the total count of each certifiacte 

 select count(certificate), certificate
 from movie_ratings
 where certificate is not null
 group by certificate;


-- 19)show the total count of each certificate where count is must be greater than 120

 select count(certificate), certificate
 from movie_ratings
 group by certificate
 having count(certificate)>120;