CREATE FUNCTION GetUserApplications (
    @ApplicationId INT
)
RETURNS TABLE
AS
RETURN
    SELECT 
        RoleTitle
    FROM
        dbo.Applications, Roles
    WHERE
        ApplicationId = @ApplicationId;