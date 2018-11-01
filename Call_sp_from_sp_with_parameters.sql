CREATE PROCEDURE spHentAdresseCount @ByNavn nvarchar(30), @AdresseCount int OUTPUT
AS
SELECT @AdresseCount = count(*) 
FROM AdventureWorks.Person.Address 
WHERE City = @ByNavn

CREATE PROCEDURE spHentAdresseCount @ByNavn nvarchar(30), @AdresseCount int OUT
AS
SELECT @AdresseCount = count(*) 
FROM AdventureWorks.Person.Address 
WHERE City = @ByNavn

DECLARE @AdresseCount int
EXEC spHentAdresseCount @ByNavn = 'Toronto', @AdresseCount = @AdresseCount OUTPUT
SELECT @AdresseCount

DECLARE @AdresseCount int
EXEC spHentAdresseCount 'Toronto', @AdresseCount OUTPUT
SELECT @AdresseCount
