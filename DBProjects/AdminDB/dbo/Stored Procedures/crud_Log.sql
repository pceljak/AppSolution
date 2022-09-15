-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_Log 
	-- Add the parameters for the stored procedure here
	@ApplicationTitle varchar(20),
	@MessageText varchar(4000),
	@MessageType varchar(20),
	@UserCreated varchar(20),
	@LogTimeStamp datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
INSERT INTO Log (ApplicationTitle, MessageText, MessageType, UserCreated, LogTimeStamp) 
	VALUES (@ApplicationTitle, @MessageText, @MessageType, @UserCreated, @LogTimeStamp)

SELECT
	LogId,
	ApplicationTitle,
	MessageText,
	MessageType,
	UserCreated,
	LogTimeStamp

FROM Log
WHERE LogId= SCOPE_IDENTITY()
END
