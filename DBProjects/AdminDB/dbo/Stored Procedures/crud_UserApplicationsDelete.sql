
CREATE PROC crud_UserApplicationsDelete
	@UserId int,
    @RoleId int,
	@ApplicationId int
AS 
BEGIN 
DELETE
FROM   UserApplications
WHERE  UserId = @UserId AND RoleId = @RoleId AND ApplicationId=@ApplicationId
 
END
