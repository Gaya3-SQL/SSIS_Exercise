--This query is used to create table--


Create Table dbo.MaritalStatus (
[NationalIDNumber] [Varchar] (150) NUll,
[LoginID] [Varchar] (150) NULL,
[OrganizationNode] [Varchar] (150) NULL,
[JobTitle] [Varchar] (250) NULL,
[BirthDate] [Date]  NULL,
[HireDate] [Date] NULL,
[Gender] [Varchar] Null,
[MaritalStatus] [Varchar] NULL,
[LoadDate] [Date] DEFAULT GETDATE(),
[Source] [Varchar] (50) NULL,
[MarriageStatus] [Varchar] (50) NULL);

ALTER TABLE dbo.MaritalStatus 
ALTER Column [MaritalStatus] [Varchar] (100);

ALTER TABLE dbo.MaritalStatus 
ALTER Column [Gender] [Varchar] (100) Null;

Select * from dbo.MaritalStatus

ALTER TABLE dbo.MaritalStatus 
ALTER COLUMN [LoadDate] [DateTime];


ALTER TABLE dbo.MaritalStatus 
ADD CONSTRAINT DF_LoadDate  DEFAULT GETDATE() For [LoadDate];

Truncate Table dbo.MaritalStatus


ALTER TABLE Persons
ADD CONSTRAINT df_City
DEFAULT 'Sandnes' FOR City;



