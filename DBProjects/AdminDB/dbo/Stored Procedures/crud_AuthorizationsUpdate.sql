
CREATE PROCEDURE crud_AuthorizationsUpdate
    @AuthorizationId int,
	@AuthorizationTitle varchar(20),
	@UserCreated varchar(20),
	@DateCreated datetime,
	@UserModified varchar(20),
	@DateModified datetime
  
AS 
BEGIN 
 
UPDATE Authorizations
SET  
	AuthorizationTitle = @AuthorizationTitle,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated,
	UserModified = @UserModified,
	DateModified = @DateModified
WHERE  AuthorizationId = @AuthorizationId
END
