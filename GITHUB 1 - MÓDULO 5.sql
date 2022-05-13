SELECT 
	MAX (EmployeeCount) AS 'Maior Qtd. Funcion�rios',
	MIN (EmployeeCount) AS 'Menor Qtd. Funcion�rios'
FROM 
	DimStore

SELECT 
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Qtd. Funcion�rios'
FROM 
	DimStore
WHERE Status = 'On' AND EmployeeCount = (SELECT MAX (EmployeeCount) FROM DimStore) OR EmployeeCount = (SELECT MIN (EmployeeCount) FROM DimStore)