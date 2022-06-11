--ZADATAK1
--Upit koji dohvaća sadržaj tablice Employees
--SELECT * FROM Employees

--ZADATAK2
--Upit koji dohvaća atribute ContactName, CompanyName, ContactTitle i Phone iz tablice Customers
--SELECT ContactName, CompanyName, ContactTitle,Phone
--FROM Customers

--ZADATAK3
--Upit koji dohvaća CategoryName i Description iz tablice Categories sortirano po atributu CategoryName.
--SELECT CategoryName, Description
--FROM Categories
--ORDER BY CategoryName

--ZADATAK4
--Upit koji dohvaća CompanyName, Fax, Phone, HomePage i Country iz tablice Suppliers sortirano po atributu Country obrnutim abecednim redosljedom i po atributu CompanyName abecednim redoslijedom.
--SELECT CompanyName, Fax, Phone, HomePage, Country
--FROM Suppliers
--ORDER BY Country DESC, CompanyName ASC

--ZADATAK5
--Upit koji prikazuje ContactName svih kupaca iz grada „Buenos Aires“
--SELECT ContactName
--FROM Customers
--WHERE City = 'Buenos Aires'

--ZADATAK6
--Upit koji prikazuje ProductName, UnitPrice i QuantityPerUnit za one artikle (Products) kojih više nema na skladištu (UnitsInStock)
--SELECT ProductName, UnitPrice, QuantityPerUnit
--FROM Products
--WHERE UnitsInStock = 0

--ZADATAK7
--Upit koji daje ime i prezime (FirstName, LastName) onih zaposlenika koji nisu iz zemlje „USA“.
--SELECT FirstName, LastName
--FROM Employees
--WHERE Country <> 'USA'

--ZADATAK8
--Upit koji prikazuje grad, naziv kompanije i ime kontakta kupaca iz onih gradova čije ime počinje s "A" ili "B"
--SELECT City, CompanyName, ContactName
--FROM Customers
--WHERE City LIKE 'A%' OR City LIKE 'B%'

--ZADATAK9
--Upit koji prikazuje sve narudžbe (Orders) koje imaju trošarinu (Freight) veću od $500.00.
--SELECT OrderID, OrderDate,Freight
--FROM Orders
--WHERE Freight > 500.00

--ZADATAK10
--Upit koji prikazuje naziv tvrtke, ime kontakta i broj faksa svih (samo onih) kupaca koji imaju broj faksa.
--SELECT CompanyName, ContactName, Fax
--FROM Customers
--WHERE Fax != 'NULL'

--ZADATAK11
--Upit koji prikazuje ime i prezime svih zaposlenika koji ne podnose izvještaj nikome(Employees.ReportTo).
--SELECT FirstName, LastName
--FROM Employees
--WHERE Employees.ReportsTo = NULL

--ZADATAK12
--Upit koji prikazuje ime, prezime i datum rođenja svih zaposlenika rođenih u 1950-im godinama
--SELECT FirstName, LastName, BirthDate
--FROM Employees
--WHERE BirthDate LIKE '195%'



--ZADATAK13
--SELECT SupplierID FROM Suppliers
--WHERE CompanyName in ('Exotic Liquids', 'Grandma Kellys Homestead','Tokyo Traders')
--SELECT ProductName,SupplierID FROM PRODUCTS
--WHERE SupplierID in (1,3,4)

--ZADATAK14
--Upit koji prikazuje poštanski broj za dostavu (ShipPostalCode), ID narudžbe (OrderId), i datum narudžbe (Orderdate) za sve narudžbe (Orders) sa poštanskim brojem za dostavu koji počinje s "02389".
--SELECT ShipPostalCode,OrderID, OrderDate
--FROM Orders
--WHERE ShipPostalCode like '02389%'

--ZADATAK15
--Upit koji prikazuje ime kontakta (ContactName), titulu (ContactTitle) i naziv tvrtke (CompanyName) za sve kupce čija titula ne sadržava riječ „Sales“.--SELECT ContactName, ContactTitle, CompanyName--FROM Customers--WHERE not ContactTitle LIKE ('%Sales%')--ZADATAK16--Upit koji prikazuje ime i prezime te grad u kojem živi za sve zaposlenike koji ne žive u Seattlu u državi Washington.SELECT FirstName, LastName, CityFROM EmployeesWHERE not City LIKE ('%Seattle%')