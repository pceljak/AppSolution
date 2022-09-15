
CREATE PROC crud_AuthorizationsDelete
    @AuthorizationId int
AS 
BEGIN 
DELETE
FROM   Authorizations
WHERE  AuthorizationId = @AuthorizationId
 
END
