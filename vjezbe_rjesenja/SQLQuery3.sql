﻿--ZADATAK 1
--. Izradi upit koji prikazuje jediničnu cijenu, količinu, popust za svaku stavku narudžbe i računa
--ukupnu cijenu korištenjem ta tri polja.
--Napomena: Budući se koristi tablica Order Detail koja u svom nazivu ima prazan znak, potrebno
--je pri navođenju naziva tablice staviti navodne znakove (tj., FROM "Order Details").
--cjelobrojni prikaz godina zaposlenika.
--Format ispisa treba izgledati ovako, te uključivati i ime i prezime zaposlenika.
--SELECT FirstName + ' ' + LastName, DATEDIFF(year,HireDate, GETDATE()) AS HireAgeInaccurate
--FROM Employees

--ZADATAK4
--Izraditi upit koji daje broj komada na zalihi (UnitsInStock), jediničnu cijenu (UnitPrice), ukupnu
--vrijednost (ukupnu cijenu) svih komada na zalihi, ukupnu cijenu svih komada na zalihi zaokruženu
--na nižu cjelobrojnu vrijednost, ukupnu cijenu svih komada na zalihi zaokruženu na višu
--cjelobrojnu vrijednost.
--Sortirati prema ukupnoj cijeni od najveće vrijednosti prema najnižoj
--SELECT UnitsInStock,UnitPrice,FLOOR(UnitPrice * UnitsInStock) AS UkupnaCijena
--FROM Products
--ORDER BY UkupnaCijena DESC

--ZADATAK5
--Izraditi upit koji daje ukupan broj različitih narudžbi (OrderID) iz tablice Order Details. Koristiti upit nad tablicom Order Details
--SELECT COUNT(DISTINCT(OrderID))
--FROM "Order Details"

--ZADATAK6
--Izraditi upit koji daje ukupan broj stavki svake narudžbe iz tablice Order Details. Upit treba prikazati ID narudžbe i ukupan broj stavki.