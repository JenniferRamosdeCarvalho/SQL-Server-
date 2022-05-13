SELECT 
	MAX (EmployeeCount) AS 'Maior Qtd. Funcionários',
	MIN (EmployeeCount) AS 'Menor Qtd. Funcionários'
FROM 
	DimStore

SELECT 
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Qtd. Funcionários'
FROM 
	DimStore
WHERE Status = 'On' AND EmployeeCount = (SELECT MAX (EmployeeCount) FROM DimStore) OR EmployeeCount = (SELECT MIN (EmployeeCount) FROM DimStore)