﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_AuthorizationsInsert
	-- Add the parameters for the stored procedure here
	@AuthorizationTitle varchar(20),
	@UserCreated varchar(20),
	@DateCreated datetime,
	@UserModified varchar(20),
	@DateModified datetime
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO Authorizations(AuthorizationTitle, UserCreated, DateCreated, UserModified, DateModified) 
	VALUES (@AuthorizationTitle, @UserCreated, @DateCreated, @UserModified, @DateModified)

SELECT
	AuthorizationId,
	AuthorizationTitle,
	UserCreated, 
	DateCreated, 
	UserModified, 
	DateModified

FROM Authorizations
WHERE (AuthorizationId= SCOPE_IDENTITY())
