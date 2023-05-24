SELECT * FROM Person.Person
WHERE BusinessEntityID = 5 
OR BusinessEntityID = 111
OR BusinessEntityID = 23

/*
AND - E
OR - OU
NOT - ACOMPANHADO
=
>
<
<>
>=
<=

*/
SELECT Weight,ProductID,ProductNumber FROM Production.Product
WHERE Weight > 500
AND Weight <= 700

SELECT * FROM HumanResources.Employee
WHERE MaritalStatus = 'M' 
AND SalariedFlag = 1
AND BirthDate < '1982-12-12'
ORDER BY BirthDate DESC

SELECT * FROM Person.EmailAddress
WHERE BusinessEntityID = 26

SELECT * FROM Person.Person
WHERE FirstName = 'Peter'
AND LastName= 'Krebs'

SELECT Person.Person.FirstName,Person.Person.LastName, Person.EmailAddress.EmailAddress 
FROM Person.Person,Person.EmailAddress
WHERE Person.BusinessEntityID = EmailAddress.BusinessEntityID
AND Person.BusinessEntityID = 26

SELECT * FROM Production.Product
SELECT COUNT(*) AS 'QTDE DE PRODUTOS' FROM Production.Product

SELECT DISTINCT Name FROM Production.Product

SELECT DISTINCT title FROM Person.Person

--Testes de comandos BETWEEN - IN - LIKE 
SELECT * FROM Person.Person
WHERE Person.EmailPromotion BETWEEN 1 AND 2;

SELECT * FROM Production.Product
WHERE Name BETWEEN 'Adjustable Race' AND 'Flat Washer 1';


SELECT * FROM Person.Person
WHERE Title IN ('Ms.','Mr.');

SELECT FirstName,LastName FROM Person.Person
WHERE FirstName LIKE 'G%'
AND LastName Like 'H%'
--ORDER BY BusinessEntityID;

--Comando BETWEEN 
SELECT * FROM Production.Product
WHERE ListPrice >= 1000
AND ListPrice <= 1500

SELECT ProductID,Name,ListPrice,ProductNumber FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500

SELECT * FROM HumanResources.Employee 
WHERE HireDate BETWEEN '2009-01-01' AND '2010-01-01'

--Comando IN
SELECT * FROM Person.Person
WHERE BusinessEntityID = 5 
OR BusinessEntityID = 111
OR BusinessEntityID = 23

SELECT * FROM Person.Person
WHERE BusinessEntityID IN (5,111,23)

--Comando LIKE
SELECT *FROM Person.Person 
WHERE FirstName LIKE 'ro%'

SELECT *FROM Person.Person 
WHERE FirstName LIKE 'ro_'

SELECT *FROM Person.Person 
WHERE FirstName LIKE 'r%e_'

--Desafio QUANTOS PRODUTOS TEMOS NO BD ACIMA DE $1500
SELECT *FROM Production.Product

SELECT count(ListPrice) FROM Production.Product
WHERE ListPrice > 1500

-- QUANTAS PESSOAS TEM O SOBRENOME QUE COMEÇA COM A LETRA 'P'

SELECT count(LastName)FROM Person.Person
WHERE LastName LIKE 'P%'

-- EM QUANTAS CIDADES UNICAS ESTAO AS PESSOAS/CLIENTES

SELECT * FROM Person.Person
SELECT * FROM Person.Address
SELECT COUNT(DISTINCT City) FROM Person.Address