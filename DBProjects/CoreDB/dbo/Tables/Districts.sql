CREATE TABLE [dbo].[Districts] (
    [DistrictId]    INT          IDENTITY (1, 1) NOT NULL,
    [RegionId]      INT          NOT NULL,
    [DistrictTitle] VARCHAR (50) NOT NULL,
    [DistrictType]  VARCHAR (20) NOT NULL,
    [UserCreated]   VARCHAR (20) NOT NULL,
    [DateCreated]   DATETIME     NOT NULL,
    [UserModified]  VARCHAR (20) NULL,
    [DateModified]  DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([DistrictId] ASC),
    CONSTRAINT [FK_Districts_Regions] FOREIGN KEY ([RegionId]) REFERENCES [dbo].[Regions] ([RegionId])
);

