CREATE TABLE dbo.Insurance (
[InsuranceID] [INT] IDENTITY(1,1) PRIMARY KEY,
[PolicyID] [INT] NULL,
[Statecode] [Varchar] (100) Null,
[County]  [Varchar] (100) Null,
[Eq_site_limit] [FLOAT]  Null,
[Hu_site_limit] [FLOAT]  Null,
[Fl_site_limit] [FLOAT]  Null,
[Fr_site_limit] [FLOAT]  Null,
[Tiv_2011] [FLOAT]  Null,
[Tiv_2012] [FLOAT]  Null,
[Eq_site_deductible] [FLOAT]  Null,
[Hu_site_deductible]  [FLOAT]  Null,
[Fl_site_deductible]  [FLOAT]  Null,
[Fr_site_deductible] [FLOAT]  Null,
[Point_latitude] [FLOAT]  Null,
[Point_longitude] [FLOAT]  Null,
[Line] [Varchar] (150) NULL,
[Construction] [Varchar] (150) NULL,
[Point_granularity] [Varchar] (150) NULL,
[GreaterThen10K] [BIT] NOT NULL,
[GranularityMoreThen2] [Varchar] (3) NOT NULL,
[LoadDate] [DateTime] DEFAULT GETDATE());


Select Sum(Hu_site_deductible) AS Sum
,Construction 
from dbo.Insurance
Group by Construction
Having Sum(Hu_site_deductible)>33395023.8;












