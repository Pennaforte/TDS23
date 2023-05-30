USE AdventureWorks2012

SELECT * FROM Person.Person

SELECT UPPER(FirstName), LOWER(LastName) FROM Person.Person

--LENGT - LEN

SELECT FirstName,LEN(FirstName) FROM Person.Person
WHERE LEN(FirstName) <=2
AND FirstName LIKE '%.'

SELECT firstname, SUBSTRING(FirstName,2,1) FROM Person.Person
WHERE SUBSTRING(FirstName,2,1) = '.'

SELECT * FROM Production.Product

SELECT ProductNumber, REPLACE(ProductNumber,'-','-2023-') FROM Production.Product

SELECT FirstName, MiddleName, LastName FROM Person.Person

CREATE OR ALTER VIEW NOMES AS 
SELECT FirstName, MiddleName, LastName 
FROM Person.Person
WHERE Title = 'Ms.'

SELECT * FROM NOMES

CREATE OR ALTER VIEW EMAILS AS 
SELECT P.BusinessEntityID AS ID ,P.FirstName AS NOME,EA.EmailAddress AS EMAIL FROM Person.Person P
INNER JOIN Person.EmailAddress EA
ON P.BusinessEntityID = EA.BusinessEntityID

--Para apagar a VIEW
DROP VIEW NOMES 

USE AdventureWorks2012
