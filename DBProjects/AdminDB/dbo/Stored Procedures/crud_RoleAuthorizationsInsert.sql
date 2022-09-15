-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_RoleAuthorizationsInsert
	-- Add the parameters for the stored procedure here
	@RoleId int,
	@AuthorizationId int
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO RoleAuthorizations(RoleId, AuthorizationId) 
	VALUES (@RoleId, @AuthorizationId)

SELECT
	RoleId,
	AuthorizationId

FROM RoleAuthorizations
WHERE (RoleId= SCOPE_IDENTITY() AND AuthorizationId=SCOPE_IDENTITY())
