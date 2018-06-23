CREATE TABLE [dbo].[UserGameBattleLog] (
    [UserGameBattleLogId] INT IDENTITY (1, 1) NOT NULL,
    [GameBattleId]     INT NOT NULL,
	[GameRoomId]     INT NOT NULL,
    [UserId]           INT NOT NULL,
    [Turn]             INT NULL,
    [Money] INT NULL, 
    [Team] INT NULL, 
    [Project] INT NULL, 
    [CreateDate] DATETIME NULL, 
    [CreateBy] INT NULL, 
    CONSTRAINT [PK_UserGameBattleLog] PRIMARY KEY CLUSTERED ([UserGameBattleLogId] ASC),
    CONSTRAINT [FK_UserGameBattleLog_GameBattle] FOREIGN KEY ([GameBattleId]) REFERENCES [dbo].[GameBattle] ([GameBattleId]),
    CONSTRAINT [FK_UserGameBattleLog_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]),
	CONSTRAINT [FK_UserGameBattleLog_GameRoom] FOREIGN KEY ([GameRoomId]) REFERENCES [dbo].[GameRoom] ([GameRoomId])
);

