CREATE TABLE [dbo].[Roles] (
    [RoleId]       INT          IDENTITY (1, 1) NOT NULL,
    [RoleTitle]    VARCHAR (20) NOT NULL,
    [UserCreated]  VARCHAR (20) NOT NULL,
    [DateCreated]  DATETIME     NOT NULL,
    [UserModified] VARCHAR (20) NULL,
    [DateModified] DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([RoleId] ASC)
);

