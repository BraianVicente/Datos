--Dada la siguiente declaracion de esquema de carga datos en Pig 
xyz = load 'space.csv' using PigStorage (';') 
		as (x:int, 
			y:int, 
			z:int);

dump xyz


-- Indicar que linea de ejemplo del archivo space.csv ser� procesado
-- correctamente por el mismo devolviendo una tupla con 3 valores enteros.	 

-- a) 1001;2001;3001;4001;5001;6001;7001;8001;9001;1001
