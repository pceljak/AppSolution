
CREATE PROC crud_RoleAuthorizationsDelete
    @RoleId int,
	@AuthorizationId int
AS 
BEGIN 
DELETE
FROM   RoleAuthorizations
WHERE  RoleId = @RoleId AND AuthorizationId=@AuthorizationId
 
END
