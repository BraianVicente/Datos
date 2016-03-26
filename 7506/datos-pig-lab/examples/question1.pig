daily = load 'NYSE_daily' 
		as (exchange, 
			symbol, 
			date, 
			open, 
			high, 
			low, 
			close, 
			volume, 
			adj_close); 
bysymbol = group daily by symbol parallel 10; 
--- �Para que se utiliza la opci�n parallel en el statement group?


-- a)Permite controlar el nivel de paralelismo al realizar operaciones
-- de Reduce en el job de MapReduce. En este caso al invocar group con
-- parallel 10, el job de MapReduce iniciado por Pig para este opera-
-- dor tendr� 10 reducers (de ser posible en el cluster).