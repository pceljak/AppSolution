
CREATE PROC crud_RolesDelete
    @RoleId int
AS 
BEGIN 
DELETE
FROM   Roles
WHERE  RoleId = @RoleId
 
END
