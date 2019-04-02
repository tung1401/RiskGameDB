CREATE TABLE [dbo].[Market] (
    [MarketId]           INT            IDENTITY (1, 1) NOT NULL,
    [MarketName]         NVARCHAR (MAX) NULL,
    [MarketDetail]       NVARCHAR (MAX) NULL,
    [MarketType]         INT            NULL,
    CONSTRAINT [PK_Market] PRIMARY KEY CLUSTERED ([MarketId] ASC)
);

