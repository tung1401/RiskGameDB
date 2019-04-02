CREATE TABLE [dbo].[UserMarketTrasaction] (
    [UserMarketTrasactionId]      INT IDENTITY (1, 1) NOT NULL,
    [MarketId]					  INT NOT NULL,
	[MarketOptionId]              INT NOT NULL,
	[GameRoomId]                  INT NOT NULL,
	[UserId]			          INT NOT NULL,
    [Turn]                        INT NULL,
	[Pay]			              INT NULL,
	[CreateDate]                  DATETIME NULL


    CONSTRAINT [PK_UserMarketTrasaction] PRIMARY KEY CLUSTERED ([UserMarketTrasactionId] ASC),
    CONSTRAINT [FK_UserMarketTrasaction_Market] FOREIGN KEY ([MarketId]) REFERENCES [dbo].[Market] ([MarketId]),
	CONSTRAINT [FK_UserMarketTrasaction_MarketOption] FOREIGN KEY ([MarketOptionId]) REFERENCES [dbo].[MarketOption] ([MarketOptionId]),
    CONSTRAINT [FK_UserMarketTrasaction_GameRoom] FOREIGN KEY ([GameRoomId]) REFERENCES [dbo].[GameRoom] ([GameRoomId]),
	CONSTRAINT [FK_UserMarketTrasaction_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

