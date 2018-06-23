CREATE TABLE [dbo].[GameBattle] (
    [GameBattleId]      INT            IDENTITY (1, 1) NOT NULL,
    [GameRoomId]        INT            NOT NULL,
    [RiskId]            INT            NOT NULL,
    [RiskOptionId]      INT            NOT NULL,
    [Ratio]             INT            NULL,
    [Turn]              INT            NULL,
    [ActionEffectType]  INT            NULL,
    [ActionEffectValue] INT NULL,
    CONSTRAINT [PK_GameBattle] PRIMARY KEY CLUSTERED ([GameBattleId] ASC),
    CONSTRAINT [FK_GameBattle_GameRoom] FOREIGN KEY ([GameRoomId]) REFERENCES [dbo].[GameRoom] ([GameRoomId]),
    CONSTRAINT [FK_GameBattle_Risk] FOREIGN KEY ([RiskId]) REFERENCES [dbo].[Risk] ([RiskId])
);

