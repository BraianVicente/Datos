-- Un script de Pig se utiliza para procesar informaci�n de distintos
-- sensores generado por un sistema de IoT con el siguiente esquema: 
measures = load 'measures.csv' using PigStorage (';') 
			as (s_01:float, 
  				s_02:float, 
  				s_03:float, 
  				s_04:float, 
  				s_05:float); 

dump measures
-- Cada sensor reporta un valor que puede ser procesado por Pig como un 
-- float y esa informaci�n llega al script de Pig en un archivo de texto
-- en el cual cada una de las mediciones de los sensores est� separada 
-- por punto y coma. Las mediciones se realiza y son reportadas a este 
-- archivo cada un delta temporal. Sin embargo, el sistema tiene dos 
-- problemas en relaci�n a los sensores. A veces lo sensores fallan y no
-- reportan informaci�n (para ese sensor la medici�n estar� vac�a). Al
-- estar el sistema en constante cambio se agregan m�s sensores y se 
-- agregan entonces nuevas mediciones al final de cada l�nea del archivo.
-- Dado un script que procesa los datos con el anterior esquema para 5 
-- sensores �habr� errores al realizar la carga de datos con los anteriores 
-- comentarios?	 

-- a)No habr� errores en la carga dado que los campos vac�os ser�n 
-- indicados como nulls por pig en las tuplas procesadas. Sin embargo 
-- la informaci�n de los nuevos sensores no estar� disponible hasta 
-- que no se modifique el esquema declarado en el script de pig.