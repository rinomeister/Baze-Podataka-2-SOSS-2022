--ZADATAK 1
--. Izradi upit koji prikazuje jediničnu cijenu, količinu, popust za svaku stavku narudžbe i računa
--ukupnu cijenu korištenjem ta tri polja.
--Napomena: Budući se koristi tablica Order Detail koja u svom nazivu ima prazan znak, potrebno
--je pri navođenju naziva tablice staviti navodne znakove (tj., FROM "Order Details").--SELECT UnitPrice,Quantity,Discount,UnitPrice*Quantity - UnitPrice * Quantity * Discount AS SPOPUSTOM--FROM "Order Details"--ZADATAK 2--Izraditi upit koji da je sljedeći ispis (tablica Employee)--SELECT FirstName + ' ' + LastName + ' can be reached at x' + Extension AS ContactInfo--FROM Employees--ZADATAK3--Izraditi upit koji prikazuje koliko je godina imao zaposlenik u trenutku kad je zaposlen, te
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
--Izraditi upit koji daje ukupan broj stavki svake narudžbe iz tablice Order Details. Upit treba prikazati ID narudžbe i ukupan broj stavki.--SELECT OrderID,SUM(Quantity)--FROM "Order Details"--GROUP BY OrderID--ZADATAK7--Izraditi upit koji daje ukupan broj stavki narudžbi (Order Details) za ProductID = 11 kod kojih je taj proizvod naručen u količini većoj od 50 komada--SELECT	SUM(Quantity)--FROM "Order Details"--WHERE ProductID = 11 AND Quantity > 50--ZADATAK 8--Izraditi upit koji daje sljedeći ispis (artikli i njihove prosječne cijene)--Izvješće treba sadržavati samo zapise kod kojih je prosječna cijena artikla veća od 70.--SELECT ProductID, AVG(UnitPrice) AS ProsjecnaCijena--FROM Products--GROUP BY ProductId--HAVING AVG(UnitPrice) > 70--ZADATAK9--Izraditi upit koji ispisuje je naručen po najvećoj količini. Rezultat treba sadržavati ID proizvoda i ukupnu naručenu količinu.--SELECT top(1) ProductID,UnitsOnOrder--FROM Products--ORDER BY UnitsOnOrder DESC--ZADATAK10--Ukupan iznos, ukupnu količinu, maksimalnu količinu po kojem je prodan, minimalnu količinu po kojem je prodan svaki proizvod (tablica OrderDetail).SELECT OrderID, SUM(UnitPrice*Quantity) AS UkupanIznos, Sum(Quantity) AS UkupnaKolicina, MIN(Quantity) AS MiniKolicina, MAX(Quantity) AS MaxKolicinaFROM "Order Details"GROUP BY OrderId