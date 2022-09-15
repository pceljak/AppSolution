
CREATE PROCEDURE crud_AuthorizationsRead
    @AuthorizationId int
AS 
BEGIN 
 
    SELECT AuthorizationId, AuthorizationTitle, UserCreated, DateCreated, UserModified, DateModified
    FROM   Authorizations  
    WHERE  (AuthorizationId = @AuthorizationId) 
END
