
CREATE PROCEDURE crud_ApplicationsRead
    @ApplicationId int
AS 
BEGIN 
 
    SELECT ApplicationId, ApplicationTitle, UserCreated, DateCreated, UserModified, DateModified
    FROM   Applications  
    WHERE  (ApplicationId = @ApplicationId) 
END
