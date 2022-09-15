-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_UserApplicationsInsert
	-- Add the parameters for the stored procedure here
	@UserId int,
	@RoleId int,
	@ApplicationId int
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO UserApplications(UserId, RoleId, ApplicationId) 
	VALUES (@UserId, @RoleId, @ApplicationId)

SELECT
	UserId,
	RoleId,
	ApplicationId

FROM UserApplications
WHERE (UserId= SCOPE_IDENTITY() AND RoleId= SCOPE_IDENTITY() AND ApplicationId=SCOPE_IDENTITY())
