SELECT * FROM sys.tables

SELECT * FROM dbo.authors

SELECT au_fname FROM dbo.authors

SELECT au_fname,phone FROM dbo.authors
ORDER BY au_fname DESC

SELECT * FROM dbo.sales

--Selecione o top 5 vendas em ordem decrescente. 
SELECT TOP 5 * FROM dbo.sales
ORDER BY qty DESC;

--Selecione aa coluna "state" onde só tenha pessoas de CA.
SELECT * FROM dbo.authors 
WHERE state = 'CA'
AND contract = 1
ORDER BY city;

SELECT SUM(qty) AS 'vendas totais' FROM dbo.sales 

Select au_fname,au_lname,au_id FROM dbo.authors ORDER BY au_id;
Select * from dbo.authors
--Altere o nome do id = 341-22-1782 de Meander para Minder
UPDATE dbo.authors SET au_fname = 'Minder' WHERE au_id = '341-22-1782'; 

--SELECT au_fname,au_lname,au_id from dbo.authors WHERE au_id = '341-22-1782';

UPDATE dbo.authors SET au_fname = 'Minder', au_lname = 'Smolk' WHERE au_id = '341-22-1782'; 

--inserir novo autor para teste de 'delete'.
INSERT INTO dbo.authors
("au_id","au_lname","au_fname","phone","address","city","state","zip","contract")
VALUES ('341-22-1783','Minder','Smolk','913 843-0462','10 Mississippi Dr.','Lawrence','KS','66044','0')
--Confere novo autor
Select au_fname,au_lname,au_id FROM dbo.authors  WHERE au_id = '341-22-1783';
--'delete' novo autor. 
DELETE FROM dbo.authors WHERE au_id = '341-22-1783';
--Confere 'delete'
Select au_fname,au_lname,au_id FROM dbo.authors  WHERE au_id = '341-22-1783';

--update de dados.
INSERT INTO dbo.authors
("au_id","au_lname","au_fname","phone","zip","contract")
VALUES ('341-22-1783','Minder','Smolk','913 843-0462','66044','0')

Select * FROM dbo.authors WHERE au_fname = 'Smolk';

UPDATE dbo.authors SET address = '10 Mississippi Dr.', city = 'Lawrence', state = 'KS' WHERE au_id = '341-22-1783';

