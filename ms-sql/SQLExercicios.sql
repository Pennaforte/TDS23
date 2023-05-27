-- FirstName, title e midname de todos que tem Mr. 

-- Todo mundo que tem o MidName com a letra A

SELECT FirstName, MiddleName, Title FROM Person.Person
WHERE Title = 'Mr.'
AND MiddleName IS NOT NULL
UNION
SELECT FirstName, MiddleName, Title FROM Person.Person
WHERE MiddleName LIKE 'A'
AND Title IS NOT NULL 
ORDER BY FirstName ASC

USE northwind

SELECT * FROM Employees

SELECT F1.FirstName, F1.HireDate,F2.FirstName, F2.HireDate FROM Employees F1, Employees F2
WHERE DATEPART(YEAR, F1.HireDate) = DATEPART (YEAR, F2.HireDate)

USE AdventureWorks2012

-- MOSTRAR A MEDIA MENSAL DE VALORES VENIDOS
--SALES.SALESORDERHEADER

SELECT * FROM Sales.SalesOrderHeader
SELECT AVG(TotalDue),DATEPART(MONTH,OrderDate) MÊS FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH,OrderDate)
ORDER BY 2
--3915,9951

SELECT AVG(TotalDue),DATEPART(YEAR,OrderDate) MÊS FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR,OrderDate)
ORDER BY 2

--QUAIS SÃO OS PRODUTOS QUE ESTÃO ACIMA DA MEDIA DE VENDAS
--PROD.PRODUCT - ID,LISTPRICE
--SUB SELECT - PROD.PRODUCTIO

SELECT ProductID, ListPrice FROM Production.Product
WHERE ListPrice > (SELECT AVG(LISTPRICE) FROM Production.Product)
ORDER BY 2



