-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_RolesInsert
	-- Add the parameters for the stored procedure here
	@RoleTitle varchar(20),
	@UserCreated varchar(20),
	@DateCreated datetime,
	@UserModified varchar(20),
	@DateModified datetime
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO Roles(RoleTitle, UserCreated, DateCreated, UserModified, DateModified) 
	VALUES (@RoleTitle, @UserCreated, @DateCreated, @UserModified, @DateModified)

SELECT
	RoleId,
	RoleTitle,
	UserCreated, 
	DateCreated, 
	UserModified, 
	DateModified

FROM Roles
WHERE (RoleId= SCOPE_IDENTITY())
