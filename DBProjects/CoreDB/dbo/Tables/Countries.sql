CREATE TABLE [dbo].[Countries] (
    [CountryId]    INT          IDENTITY (1, 1) NOT NULL,
    [CountryCode]  CHAR (3)     NULL,
    [CountryTitle] VARCHAR (50) NOT NULL,
    [UserCreated]  VARCHAR (20) NOT NULL,
    [DateCreated]  DATETIME     NOT NULL,
    [UserModified] VARCHAR (20) NULL,
    [DateModified] DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([CountryId] ASC)
);

