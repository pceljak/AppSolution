
CREATE PROCEDURE crud_UsersRead
    @UserId int
AS 
BEGIN 
 
    SELECT UserId, Username, Email, PasswordHash, IsActive, IsRegistered, UserCreated, DateCreated, UserModified, DateModified
    FROM   Users  
    WHERE  (UserId = @UserId) 
END
