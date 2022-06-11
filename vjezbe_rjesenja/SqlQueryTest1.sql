----zadatak1
----upit koji prikazuje podatke productid,productname,unitprice proizvoda koji su trenutno naruceni units on order ili kojima je cijena
----untiprice manja od 9
--SELECT ProductID,ProductName,UnitPrice
--FROM Products
--WHERE UnitsOnOrder is not NULL or UnitPrice<9

--zadatak2
--upit koji ispisuje sve zaposlenike koji ce 01.01.2018 biti starija od 60 godina
--SELECT *
--FROM Employees
--WHERE 2018-YEAR(BirthDate)>60

--zadatak3 
--upit kojji daje podataka o broju zaposlenika po zemljama poredanom prema broju zapolsneiku po desc
--SELECT DISTINCT(Country), COUNT(Country) as Zemlja
--FROM Employees
--GROUP BY Country
--ORDER BY COUNT(Country) DESC

--Zadatak4
--SELECT e.FirstName + ' ' + e.LastName AS ImeIPrezime,e.HomePhone,c.CompanyName,c.Phone,s.CompanyName,s.Phone
--FROM Employees e CROSS JOIN Customers c 
--CROSS JOIN Suppliers s  
 
--zadatak5
SELECT DISTINCT(p.ProductName),o.OrderID,o.OrderDate
FROM Products p CROSS JOIN Orders o
WHERE YEAR(OrderDate) = 1997
UNION 
SELECT p.ProductName,o.OrderID,o.OrderDate
FROM Products p CROSS JOIN Orders o
WHERE YEAR(OrderDate) = 1998

--zadatak6
--SELECT Distinct(s.CompanyName) AS Dobavljac,od.Quantity AS Prodano
--FROM Suppliers s CROSS JOIN [Order Details] od
--WHERE od.Quantity > 20 AND od.Quantity < 40
--ORDER BY od.Quantity ASC