PRINT '';
PRINT '*** Dropping Database';
GO
IF EXISTS (SELECT [name] FROM [master].[sys].[databases] WHERE [name] = 'COVID-DATA')
DROP DATABASE Covid_Data_DW;
GO
PRINT '';
PRINT '*** Creating Database';
GO
Create database Covid_Data_DW
Go
Use Covid_Data_DW
Go

PRINT '';
PRINT '*** Creating Table DimLocation';
GO
Create table DimLocation
(
LocationID int primary key,
CountryName varchar(50) not null,
AlternateName varchar(50),
Continent varchar(50) not null,
)
Go

PRINT '';
PRINT '*** Creating Table DimTime';
GO
Create table DimTime
(
TimeKey int primary key,
MonthIndex int not null,
QuarterIndex int not null,
Year int not null,
)
Go
PRINT '';
PRINT '*** Creating Table DimPopulation';
GO
Create table DimPopulation
(
PopulationID int primary key,
PopulationSize varchar(15)not null,
)
Go

PRINT '';
PRINT '*** Creating Table DimLifeExpectancy';
GO
Create table DimLifeExpectancy
(
LifeExpectancyID int primary key,
isOver75 varchar(10) not null,
)
Go


PRINT '';
PRINT '*** Creating Table FactCovidCases';
GO
Create Table FactCovidCases
(
CovidDataId int primary key,
TimeKey int not null,
LocationID int not null,
PopulationID int not null,
LifeExpectancyID int not null,
ConfirmedCases int,
RecoveredCases int,
DeathCases int,
)
Go
PRINT '';
PRINT '*** Add relation between fact table foreign keys to Primary keys of Dimensions';
GO
AlTER TABLE FactCovidCases ADD CONSTRAINT
FK_TimeKey FOREIGN KEY (TimeKey)REFERENCES DimTime(TimeKey);
AlTER TABLE FactCovidCases ADD CONSTRAINT
FK_LocationID FOREIGN KEY (LocationID)REFERENCES DimLocation(LocationID);
AlTER TABLE FactCovidCases ADD CONSTRAINT
FK_PopulationID FOREIGN KEY (PopulationID)REFERENCES DimPopulation(PopulationID);
AlTER TABLE FactCovidCases ADD CONSTRAINT
FK_LifeExpectancyID FOREIGN KEY (LifeExpectancyID)REFERENCES DimLifeExpectancy(LifeExpectancyID);
Go



