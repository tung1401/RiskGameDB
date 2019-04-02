CREATE TABLE [dbo].[MarketOption] (
    [MarketOptionId]      INT IDENTITY (1, 1) NOT NULL,
    [MarketId]            INT NULL,
	[MarketOptionDetail]  NVARCHAR (MAX) NULL,
    [MinValue]            INT NULL,
    [MaxValue]			  INT NULL,
	[ForMode]			  INT NULL,

    CONSTRAINT [PK_MarketOption] PRIMARY KEY CLUSTERED ([MarketOptionId] ASC),
    CONSTRAINT [FK_MarketOption_Market] FOREIGN KEY ([MarketId]) REFERENCES [dbo].[Market] ([MarketId])
);

