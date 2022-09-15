
CREATE PROC crud_UsersDelete
    @UserId int
AS 
BEGIN 
DELETE
FROM   Users
WHERE  UserId = @UserId
 
END
