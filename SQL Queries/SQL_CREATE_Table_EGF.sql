CREATE TABLE dbo.EGF (
[EGFID] [INT] IDENTITY(1,1) PRIMARY KEY,
[ID] [VARCHAR] (100) NOT NULL,
[EGF_Baseline] [float] NULL,
[EGF_Stimulus] [float] NULL,
[LoadDate] [DateTime] DEFAULT GETDATE(),
);



Select COUNT(*) AS COUNT,LoadDate from dbo.EGF
Group BY LoadDate
ORDER BY LoadDate













