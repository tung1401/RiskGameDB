CREATE TABLE [dbo].[UserGameBattle] (
    [UserGameBattleId] INT IDENTITY (1, 1) NOT NULL,
    [GameBattleId]     INT NOT NULL,
    [UserId]           INT NOT NULL,
    [Turn]             INT NULL,
    CONSTRAINT [PK_UserGameBattle] PRIMARY KEY CLUSTERED ([UserGameBattleId] ASC),
    CONSTRAINT [FK_UserGameBattle_GameBattle] FOREIGN KEY ([GameBattleId]) REFERENCES [dbo].[GameBattle] ([GameBattleId]),
    CONSTRAINT [FK_UserGameBattle_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

