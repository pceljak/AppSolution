-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_ApplicationsInsert
	-- Add the parameters for the stored procedure here
	@ApplicationTitle varchar(20),
	@UserCreated varchar(20),
	@DateCreated datetime,
	@UserModified varchar(20),
	@DateModified datetime
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO Applications(ApplicationTitle, UserCreated, DateCreated, UserModified, DateModified) 
	VALUES (@ApplicationTitle, @UserCreated, @DateCreated, @UserModified, @DateModified)

SELECT
	ApplicationId,
	ApplicationTitle,
	UserCreated, 
	DateCreated, 
	UserModified, 
	DateModified

FROM Applications
WHERE (ApplicationId= SCOPE_IDENTITY())
