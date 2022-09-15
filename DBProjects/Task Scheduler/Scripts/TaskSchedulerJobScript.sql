USE LoggingDB
GO

DECLARE @CURRENT_DATE DATETIME=GETDATE()

INSERT INTO Log_History
SELECT * , GETDATE()
FROM Log
WHERE LogTimeStamp < DATEADD(YEAR,-2,DATEADD(HOUR,1,@CURRENT_DATE))

DELETE
FROM Log
WHERE LogTimeStamp < DATEADD(YEAR,-2,DATEADD(HOUR,1,@CURRENT_DATE))