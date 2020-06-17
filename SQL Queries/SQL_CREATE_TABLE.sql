CREATE TABLE dbo.PlayersBirth (
[ID] [INT] IDENTITY (1,1) PRIMARY KEY,
[PlayerID] [Varchar] (100) null,
[FirstName]  [Varchar] (100) null,
[LastName]   [Varchar] (100) null,
[BirthYear] [INT] null,
[BirthMonth] [INT] null,
[BirthDay]  [INT] null,
[BirthCountry] [Varchar] (100) NULL,
[BirthState] [Varchar] (100) NULL,
[BirthCity] [Varchar] (100) NULL,
[PlayerBirth] [Varchar] (100) NULL,
[PlayerYear]  [INT] null,
[LoadDate] [DateTime] DEFAULT GETDATE());
