CREATE TABLE [dbo].[Users] (
    [UserId]       INT           IDENTITY (1, 1) NOT NULL,
    [Username]     VARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Email]        VARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [PasswordHash] VARCHAR (200) NOT NULL,
    [IsActive]     BIT           NOT NULL,
    [IsRegistered] BIT           NOT NULL,
    [UserCreated]  VARCHAR (20)  NOT NULL,
    [DateCreated]  DATETIME      NOT NULL,
    [UserModified] VARCHAR (20)  NULL,
    [DateModified] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

