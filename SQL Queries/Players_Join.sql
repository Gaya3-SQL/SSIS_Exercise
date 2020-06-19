Select * from dbo.PlayersBirth

--TRUNCATE TABLE dbo.PlayersBirth

Select PY.playerID,PY.nameFirst,PY.nameLast,PY.birthYear,PY.birthMonth,PY.birthDay,PY.birthCountry,PY.birthState,PY.birthCity 
from dbo.players AS PY
JOIN Typing.dbo.PlayersBirth AS PB ON ISNULL(PY.birthMonth,'') = ISNULL(PB.BirthMonth,'') AND ISNULL(PY.birthYear,'') = ISNULL(PB.BirthYear,'') 
AND ISNULL(PY.birthDay,'') = ISNULL(PB.BirthDay,'') 
AND ISNULL(PY.birthState,'') = ISNULL(PB.BirthState,'')
AND ISNULL(PY.playerID,'') = ISNULL(PB.PlayerID,'') AND ISNULL(PY.nameFirst,'') = ISNULL(PB.FirstName,'') AND ISNULL(PY.nameLast,'') = ISNULL(PB.LastName,'') 
AND ISNULL(PY.birthCountry,'') = ISNULL(PB.BirthCountry,'') 
AND ISNULL(PY.birthCity,'') = ISNULL(PB.BirthCity,'')
Where ISNULL(PY.birthMonth,'')<11 AND ISNULL(PY.birthYear,'')>1972
AND PB.PlayerID IS NULL


Select PY.playerID,PY.nameFirst,PY.nameLast,PY.birthYear,PY.birthMonth,PY.birthDay,PY.birthCountry,PY.birthState,PY.birthCity,PB.PlayerID
from dbo.players AS PY
LEFT JOIN Typing.dbo.PlayersBirth AS PB ON ISNULL(PY.birthMonth,'') = ISNULL(PB.BirthMonth,'') AND ISNULL(PY.birthYear,'') = ISNULL(PB.BirthYear,'') 
AND ISNULL(PY.birthDay,'') = ISNULL(PB.BirthDay,'') 
AND ISNULL(PY.birthState,'') = ISNULL(PB.BirthState,'')
AND ISNULL(PY.playerID,'') = ISNULL(PB.PlayerID,'') AND ISNULL(PY.nameFirst,'') = ISNULL(PB.FirstName,'') AND ISNULL(PY.nameLast,'') = ISNULL(PB.LastName,'') 
AND ISNULL(PY.birthCountry,'') = ISNULL(PB.BirthCountry,'') 
AND ISNULL(PY.birthCity,'') = ISNULL(PB.BirthCity,'')
Where ISNULL(PY.birthMonth,'')<11 AND ISNULL(PY.birthYear,'')<1972
AND PB.PlayerID IS NULL



Select PY.playerID,PY.nameFirst,PY.nameLast,PY.birthYear,PY.birthMonth,PY.birthDay,PY.birthCountry,PY.birthState,PY.birthCity 
from dbo.players AS PY
LEFT JOIN Typing.dbo.PlayersBirth AS PB ON PY.birthMonth = PB.BirthMonth AND PY.birthYear = PB.BirthYear AND PY.birthDay = PB.BirthDay AND PY.birthState = PB.BirthState
AND PY.playerID = PB.PlayerID AND PY.nameFirst = PB.FirstName AND PY.nameLast = PB.LastName AND PY.birthCountry = PB.BirthCountry 
AND PY.birthCity = PB.BirthCity
Where PY.birthMonth<11


--Select playerID,FirstName,LastName,birthYear,birthMonth,birthDay,birthCountry,birthState,birthCity 
--from dbo.PlayersBirth 
----JOIN BaseballData.dbo.players AS PL ON 
--Where birthMonth<11
