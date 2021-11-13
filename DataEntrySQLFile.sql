BULK INSERT [dbo].[DimLocations] FROM 'C:\Users\tunaa\Downloads\covid-data(1)\covid-data\locations.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);
BULK INSERT [dbo].[DimTime] FROM 'C:\Users\tunaa\Downloads\covid-data(1)\covid-data\times.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);
BULK INSERT [dbo].[DimLifeExpectancy] FROM 'C:\Users\tunaa\Downloads\covid-data(1)\covid-data\actual_life_expectancy.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);
BULK INSERT [dbo].[DimPopulation] FROM 'C:\Users\tunaa\Downloads\covid-data(1)\covid-data\actual_population.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);
BULK INSERT [dbo].[FactCovidCases] FROM 'C:\Users\tunaa\Downloads\covid-data(1)\covid-data\combiningAttempt.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);