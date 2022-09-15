CREATE TABLE [dbo].[Genders_History] (
    [GenderId]     INT           NOT NULL,
    [GenderShort]  CHAR (1)      NOT NULL,
    [GenderTitle]  VARCHAR (20)  NOT NULL,
    [Description]  VARCHAR (MAX) NOT NULL,
    [UserCreated]  VARCHAR (20)  NOT NULL,
    [DateCreated]  DATETIME      NOT NULL,
    [UserModified] VARCHAR (20)  NULL,
    [DateModified] DATETIME      NULL,
    [ChangeType]   CHAR (1)      NULL
);

