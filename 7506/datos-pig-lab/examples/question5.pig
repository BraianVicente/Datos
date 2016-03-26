--Dado el siguiente script de pig 
ratings = load '../data/movies/ratings.dat' using PigStorage (';') 
			as (UseriD:int,
			 	MovieID:int, 
			 	Rating:int, 
			 	Timestamp:chararray);

grpd = group ratings by (MovieID); 





-- �Como se puede generar de forma correcta una tupla por pelicula que tenga su identificador, su raiting promedio y el total de ratings?	 

--avg_total_movies = foreach grpd generate as movie_id, AVG(ratings.Rating) as movie_avg, COUNT(ratings.*) as total;

avg_total_movies = foreach grpd generate group as movie_id, AVG(ratings.Rating) as movie_avg, COUNT(ratings) as total;

--avg_total_movies = foreach grpd generate group as movie_id, AVG(ratings) as movie_avg, COUNT(ratings) as total;

--avg_ratings = foreach grpd generate group as movie_id, AVG(ratings.Rating) as movie_avg, COUNT(ratings.*) as total;


dump avg_total_movies