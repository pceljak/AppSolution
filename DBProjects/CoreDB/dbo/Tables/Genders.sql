CREATE TABLE [dbo].[Genders] (
    [GenderId]     INT           IDENTITY (1, 1) NOT NULL,
    [GenderShort]  VARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [GenderTitle]  VARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Description]  VARCHAR (MAX) NOT NULL,
    [UserCreated]  VARCHAR (20)  NOT NULL,
    [DateCreated]  DATETIME      NOT NULL,
    [UserModified] VARCHAR (20)  NULL,
    [DateModified] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([GenderId] ASC)
);

