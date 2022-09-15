CREATE TABLE [dbo].[Places] (
    [PlaceId]           INT           IDENTITY (1, 1) NOT NULL,
    [PlaceNationalCode] VARCHAR (20)  NULL,
    [PlaceTitle]        VARCHAR (255) NOT NULL,
    [DistrictId]        INT           NOT NULL,
    [RegionId]          INT           NOT NULL,
    [UserCreated]       VARCHAR (20)  NOT NULL,
    [DateCreated]       DATETIME      NOT NULL,
    [UserModified]      VARCHAR (20)  NULL,
    [DateModified]      DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([PlaceId] ASC),
    CONSTRAINT [FK_Places_Districts] FOREIGN KEY ([DistrictId]) REFERENCES [dbo].[Districts] ([DistrictId]),
    CONSTRAINT [FK_Places_Regions] FOREIGN KEY ([RegionId]) REFERENCES [dbo].[Regions] ([RegionId])
);

