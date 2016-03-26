--Dado el siguiente c�digo de Apache Pig 
ratings = load '../data/movies/ratings.dat' using PigStorage (';') 
			as (UseriD:int, 
				MovieID:int, 
				Rating:int, 
				Timestamp:chararray);

grpd = group ratings by (MovieID);

avg = foreach grpd generate group as movie_id, AVG(ratings.Rating) as avg_rating; 

-- Al ejecutarse el mismo �Se realizar�n operaciones contra el hadoop cluster, 
-- y cual es el resultado desde el punto de vista de Pig?	 

-- c) No se realiza ninguna operacion dado que pig utiliza ?lazy evaluation?.
-- Al no haber operaciones que pidan guardado u obtenci�n de resultados (por 
-- ejemplo dump) no ejecutar� ninguna contra el cluster de hadoop.