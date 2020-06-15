--creating the table by using create table statement--

Create Table dbo.PersonGeographyUSA (
[FirstName] [Varchar] (200) NOT NULL,
[LastName] [Varchar] (200) NOT NULL,
City [Varchar] (150) NOT NULL,
[State] [Varchar] (100) NULL,
[Country] [Varchar] (150)  NULL,
[ZIPCode] [Varchar] (50)NULL,
[ISUSA] [BIT] NOT NULL);

Select * from dbo.PersonGeographyUSA


Create Table dbo.PersonGeographyNONUSA (
[FirstName] [Varchar] (200) NOT NULL,
[LastName] [Varchar] (200) NOT NULL,
City [Varchar] (150) NOT NULL,
[State] [Varchar] (100) NULL,
[Country] [Varchar] (150)  NULL,
[ZIPCode] [Varchar] (50)NULL,
[ISUSA] [BIT] NOT NULL);

Select * from dbo.PersonGeographyNONUSA
