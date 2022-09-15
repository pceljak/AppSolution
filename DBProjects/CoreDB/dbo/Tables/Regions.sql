CREATE TABLE [dbo].[Regions] (
    [RegionId]     INT          IDENTITY (1, 1) NOT NULL,
    [RegionTitle]  VARCHAR (50) NOT NULL,
    [CountryId]    INT          NOT NULL,
    [UserCreated]  VARCHAR (20) NOT NULL,
    [DateCreated]  DATETIME     NOT NULL,
    [UserModified] VARCHAR (20) NULL,
    [DateModified] DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([RegionId]),
    CONSTRAINT [FK_Regions_Countries] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Countries] ([CountryId])
);

