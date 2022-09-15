
CREATE PROCEDURE crud_UsersUpdate
    @UserId int,
	@Username varchar(100),
	@Email varchar(100),
	@PasswordHash varchar(200),
	@IsActive bit,
	@IsRegistered bit,
	@UserCreated varchar(20),
	@DateCreated datetime,
	@UserModified varchar(20),
	@DateModified datetime
  
AS 
BEGIN 
 
UPDATE Users
SET  
	Username = @Username,
	Email = @Email,
	PasswordHash = @PasswordHash,
	IsActive = @IsActive,
	IsRegistered = @IsRegistered,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated,
	UserModified = @UserModified,
	DateModified = @DateModified
WHERE  UserId = @UserId
END
