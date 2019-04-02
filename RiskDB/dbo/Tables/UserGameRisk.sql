CREATE TABLE [dbo].[UserGameRisk] (
    [UserGameRiskId] INT IDENTITY (1, 1) NOT NULL,
    [RiskId]     INT NOT NULL,
	[RiskOptionId]     INT NOT NULL,
    [UserId]           INT NOT NULL,
    [GameRoomId]             INT NOT NULL,
    [Turn] INT NULL, 
    [CreateDate] DATETIME NULL, 
    [CreateBy] INT NULL, 
    CONSTRAINT [PK_UserGameRisk] PRIMARY KEY CLUSTERED ([UserGameRiskId] ASC),
    CONSTRAINT [FK_UserGameRisk_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]),
	CONSTRAINT [FK_UserGameRisk_GameRoom] FOREIGN KEY ([GameRoomId]) REFERENCES [dbo].[GameRoom] ([GameRoomId]),
	CONSTRAINT [FK_UserGameRisk_Risk] FOREIGN KEY ([RiskId]) REFERENCES [dbo].[Risk] ([RiskId]),
	CONSTRAINT [FK_UserGameRisk_RiskOption] FOREIGN KEY ([RiskOptionId]) REFERENCES [dbo].[RiskOption] ([RiskOptionId])
);

