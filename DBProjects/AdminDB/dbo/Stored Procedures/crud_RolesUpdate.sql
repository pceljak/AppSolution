
CREATE PROCEDURE crud_RolesUpdate
    @RoleId int,
	@RoleTitle varchar(20),
	@UserCreated varchar(20),
	@DateCreated datetime,
	@UserModified varchar(20),
	@DateModified datetime
  
AS 
BEGIN 
 
UPDATE Roles
SET  
	RoleTitle = @RoleTitle,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated,
	UserModified = @UserModified,
	DateModified = @DateModified
WHERE  RoleId = @RoleId
END
