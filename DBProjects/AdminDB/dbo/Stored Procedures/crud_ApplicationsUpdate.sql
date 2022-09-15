
CREATE PROCEDURE crud_ApplicationsUpdate
    @ApplicationId int,
	@ApplicationTitle varchar(20),
	@UserCreated varchar(20),
	@DateCreated datetime,
	@UserModified varchar(20),
	@DateModified datetime
  
AS 
BEGIN 
 
UPDATE Applications
SET  
	ApplicationTitle = @ApplicationTitle,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated,
	UserModified = @UserModified,
	DateModified = @DateModified
WHERE  ApplicationId = @ApplicationId
END
