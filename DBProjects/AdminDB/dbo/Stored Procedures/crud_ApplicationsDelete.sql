
CREATE PROC crud_ApplicationsDelete
    @ApplicationId int
AS 
BEGIN 
DELETE
FROM   Applications
WHERE  ApplicationId = @ApplicationId
 
END
