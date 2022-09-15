CREATE FUNCTION GetRoleAuthorizations (
    @RoleId INT
)
RETURNS TABLE
AS
RETURN
    SELECT 
        RoleId,
        RoleTitle
    FROM
        dbo.Roles
    WHERE
        RoleId = @RoleId;