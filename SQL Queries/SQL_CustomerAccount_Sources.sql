CREATE TABLE dbo.CustomerAccount (
[CustomerID] [INT] IDENTITY (1,1) PRIMARY KEY,
[AccountKey] [INT] NOT  NULL,
[AccountType] [Varchar] (30) NULL,
[AccountDescription] [Varchar] (50) NULL,
[Operator] [Varchar] (50) NULL,
[LoadDate] [DATETIME] DEFAULT GETDATE());

ALTER TABLE dbo.CustomerAccount
ALTER COLUMN [AccountType] [Varchar] (50) NULL;
