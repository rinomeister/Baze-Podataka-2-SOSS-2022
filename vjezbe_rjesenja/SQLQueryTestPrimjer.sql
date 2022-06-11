--ZADATAK1
--Upit koji prikazuje gradove u koje je do sada izvršena dostava (isti grad se treba ispisati samo
--jednom). Uzeti u obzir samo gradove koji se ne nalaze u USA
--SELECT DISTINCT City
--FROM Customers where Country <>'USA'

--ZAD2
--Upit koji prikazuje sve narudžbe koje nisu naručene (OrderDate) u 2000.g
--SELECT OrderID,OrderDate
--FROM ORDERS where YEAR(OrderDate)<>1996

--ZAD3
--Upit koji prikazuje sve podatke o kupcima iz tablice Customers za one kupce čije ime grada sadrži slovo W i kojima je definirana regija.
--SELECT *
--FROM Customers where Region is not NULL and City like '%[W]%'

--ZAD4
--Upit koji za narudžbu OrderId= 10457 ispisuje sve stavke narudžbe [Order Details], te ukupan
--iznos svake stavke (UnitPrice*Quantity) te iznos sa 8% popusta. Tako dobiveni novi atributi
--trebaju se zvati Cijena i Cijena_popust.
--SELECT *,
--UnitPrice*Quantity as Cijena,
--UnitPrice*Quantity*0.92 as Cijena_Popust
--FROM [Order Details] where OrderID like 10457

--ZAD5
--Upit koji daje prosječnu vrijednost količina (Quantity) za sve stavke svih narudžbi.
--SELECT AVG(Quantity) as ProsjecnaKolicina
--FROM [Order Details]

--ZAD6
--Upit koji prikazuje narudžbe kojima je razlika datuma isporuke (ShippedDate) i datuma narudžbe (OrderDate) veća od pet dana
--SELECT *
--FROM Orders where DAY(ShippedDate)>DAY(OrderDate) + 5

--zad8
--Ispisati zaposlenika (id, ime, prezime) koji je realizirao najnoviju narudžbu. Uz ime i prezime
--zaposlenika ispisati i ID narudžbe i dostavljača (Shippers.CompanyName).
--SELECT DISTINCT (FirstName + LastName),OrderID,OrderDate
--FROM Employees CROSS JOIN Orders
--ORDER BY Orders.OrderDate DESC

--zad9
--Izradite upit koji ispisuje ukupan broj narudžbi ostvarenih u 1997. godini (Orders.OrderDate)
--za svakog zaposlenika.
--Upit treba sadržavati sljedeće atribute: ime i prezime zaposlenika, ukupan broj narudžbi,
--godina narudžbe. Atribut koji daje ukupan broj narudžbi treba se zvati BrojNarudzbi.
--Upit treba obuhvatiti sve zaposlenike, bez obzira jesu li ostvarili narudžbe te godine.
--Sortirati zapise od zaposlenika koji ima najveći broj narudžbi prema onome koji ima najmanji
--broj narudžbi. (
--SELECT e.FirstName,E.LastName,COUNT(*) AS BrojNarudzbi,YEAR(OrderDate) 
--FROM Employees e LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
--WHERE YEAR(OrderDate) IN (1997)
--GROUP BY e.EmployeeID, e.LastName, e.FirstName,YEAR(OrderDate)
--ORDER BY BrojNarudzbi DESC

--ZAD7
--ispravljenooo
--SELECT s.CompanyName,COUNT(*) AS Broj
--FROM Products p INNER JOIN [Order Details] o ON p.ProductID = o.ProductID
--INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
--GROUP BY s.CompanyName 
--HAVING COUNT (*) > 100
--ORDER BY Broj DESC

--zad10
--Izraditi jedan upit koji će prikazati sljedeće podatke (telefonski imenik):
--ime i prezime zaposlenika (kao jedno polje) , telefonski broj (kućni broj)
--naziv tvrtke kupca, telefonski broj
--naziv tvrtke dostavljača (Shippers), telefonski broj
--SELECT FirstName + ' ' + LastName, HomePhone from Employees
--UNION
--SELECT CompanyName,Phone from Customers
--UNION
--SELECT CompanyName,Phone from Shippers

--ZAD8
--SELECT TOP 1 EM,EPLOYEEID,FIRSTNAME,LASSTNAME,ORDERID,ORDERDATE,S.COMPANYNAME FROM EMPLOYEES E INNER JOIN ORDERS O 
--ON E.EPLOYEE ID = O.EMPLOYEE ID INNER JOIN SHIPPERS S ON O.SHIPVIA = S.SHIPPERID
--dORDER BY ORDERDATE  DESC