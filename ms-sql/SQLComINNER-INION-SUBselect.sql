CREATE database aulajoin

use aulajoin

CREATE TABLE A(
ID int, Nome varchar(20));

CREATE TABLE B(
ID int, Nome varchar(20));

SELECT * FROM sys.tables

INSERT INTO A
VALUES (1,'Robo');
INSERT INTO A
VALUES (2,'Macaco');
INSERT INTO A
VALUES (3,'Samurai');
INSERT INTO A
VALUES (4,'Monitor');

INSERT INTO B
VALUES (1,'Espada');
INSERT INTO B
VALUES (2,'Robo');
INSERT INTO B
VALUES (3,'Mario');
INSERT INTO B
VALUES (4,'Samurai');

SELECT * FROM A
SELECT * FROM B

SELECT *FROM A
INNER JOIN B
ON A.Nome = B.Nome

SELECT *FROM A
FULL OUTER JOIN B
ON A.Nome = B.Nome

SELECT *FROM A
LEFT JOIN B
ON A.Nome = B.Nome
WHERE B.Nome IS NULL

USE AdventureWorks2012
SELECT * FROM Production.Product
WHERE Name LIKE '%CHAI%'
UNION
SELECT * FROM Production.Product
WHERE Name LIKE '%DECAL%'
ORDER BY Name DESC;


--PERSON.PERSON / EMAILADDRES
--ID, FIRSTNAME, LASTNAME, EMAIL
SELECT P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress, RH.JobTitle 
FROM Person.Person P
INNER JOIN Person.EmailAddress PE
ON P.BusinessEntityID = PE.BusinessEntityID
INNER JOIN HumanResources.Employee RH
ON P.BusinessEntityID = RH.BusinessEntityID
WHERE RH.JobTitle LIKE '%DESI%'

--NOME DOS PRODUTOS E AS INFORMAÇOES DE SUBCATEGORIA 
-- LISTPRICE, PROD NAME, PROD NOME SUBCATEGORIA
-- PRODUCT/ PRODUCTSUBCATEGORY
SELECT * FROM Production.ProductSubcategory
SELECT P.Name, PS.Name, p.ListPrice FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS
ON P.ProductSubcategoryID = PS.ProductSubcategoryID

-- TRAZER O CLIENTE ID, TIPO DE TELEFONE, O ID DO TELEFONE, O NUMERO DO TELEFONE
SELECT * FROM Person.PersonPhone
SELECT * FROM Person.PhoneNumberType
SELECT P.BusinessEntityID, PP.FirstName, PN.Name,P.PhoneNumberTypeID, P.PhoneNumber FROM Person.PersonPhone P
INNER JOIN Person.PhoneNumberType PN
ON P.PhoneNumberTypeID = PN.PhoneNumberTypeID
INNER JOIN Person.Person PP
ON P.BusinessEntityID = PP.BusinessEntityID


--TABELAS PERSON, EMAILADDRES, SALES.PERSONCREDIT

SELECT * FROM Person.Person
SELECT * FROM Sales.PersonCreditCard
SELECT * FROM Person.EmailAddress

--PRECISO DAS PESSOAS QUE TEM O CARTAO DE CREDITO REGISTRADO
-- ID, NOME, E-MAIL

SELECT TOP 10 A.BusinessEntityID, A.FirstName, B.CreditCardID, C.EmailAddress FROM Person.Person A
INNER JOIN Sales.PersonCreditCard B
ON A.BusinessEntityID = b.BusinessEntityID
INNER JOIN Person.EmailAddress C
ON  A.BusinessEntityID = C.BusinessEntityID

--PRECISO DAS PESSOAS QUE NAO TEM UM CARTAO DE CREDITO REGISTRADO 
-- ID, NOME, E-MAIL

SELECT A.BusinessEntityID, A.FirstName, B.CreditCardID,C.EmailAddress FROM Person.Person A
LEFT JOIN Sales.PersonCreditCard B
ON A.BusinessEntityID = b.BusinessEntityID
LEFT JOIN Person.EmailAddress C
ON A.BusinessEntityID = C.BusinessEntityID
WHERE B.CreditCardID IS NULL
ORDER BY A.FirstName 

SELECT * FROM Production.Product

SELECT AVG(LISTPRICE) FROM Production.Product
--438,6662
SELECT ProductID, ListPrice FROM Production.Product
WHERE ListPrice > 438.6662

SELECT ProductID, ListPrice FROM Production.Product
WHERE ListPrice > (SELECT AVG(LISTPRICE) FROM Production.Product)

--NOME DOS FUNCIONATIOS QUE SAO DESIGN ENGINEER

SELECT * FROM Person.Person

SELECT * FROM HumanResources.Employee
WHERE JobTitle = 'DESIGN ENGINEER'

SELECT FirstName FROM Person.Person 
WHERE BusinessEntityID IN (5,6,15)

SELECT FirstName FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee
							WHERE JobTitle = 'DESIGN ENGINEER')

SELECT FirstName FROM Person.Person A
INNER JOIN HumanResources.Employee B
ON A.BusinessEntityID = B.BusinessEntityID
WHERE B.JobTitle = 'DESIGN ENGINEER' 


