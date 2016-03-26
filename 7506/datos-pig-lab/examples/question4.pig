--Dado la siguiente declaraciones de esquemas en Pig sobre la misma fuente de datos: 
movies = load '../data/movies/movies.dat' using PigStorage (';') 
		as (m_MovieID:int, 
			m_Title:chararray, 
			m_Genre:chararray);


movies = load '../data/movies/movies.dat' using PigStorage (';') 
		as (m_MovieID, 
			m_Title, 
			m_Genre);

-- �Cuales son las principales diferencias entre ambas?	 
 
-- d)La principal diferencia es que en la primera declaraci�n 
-- los tipos de datos se indican expl�citamente. En la segun-
-- da los tipos se al no declararse de forma expl�cita, Pig 
-- considera los campos ser�n del tipo bytearray.