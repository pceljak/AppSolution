
CREATE PROCEDURE crud_RolesRead
    @RoleId int
AS 
BEGIN 
 
    SELECT RoleId, RoleTitle, UserCreated, DateCreated, UserModified, DateModified
    FROM   Roles  
    WHERE  (RoleId = @RoleId) 
END
