﻿
Create Table [dbo].[GameRoom](
GameRoomId [int] IDENTITY(1,1) NOT NULL,
GameRoomName [Nvarchar](Max),
Goal  [int] not NULL,
SoftwareType  [int] not NULL,
[Multiplayer] [int] not NULL,
[MoneyValue] [int] not NULL,
[ProjectValue] [int] not Null,
[TeamValue] [int] not Null,
StartDate DateTime NULL,
[EndDate] DATETIME NULL,
[CreateDate] DATETIME NULL,
UserId INT NOT NULL,
Active BIT NULL,
[GameRound] INT NOT NULL,
[GoalValue] INT NULL,
[IncludeBot] BIT NULL,

CONSTRAINT [PK_GameRoom] PRIMARY KEY CLUSTERED ([GameRoomId] ASC),
CONSTRAINT [FK_GameRoom_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]),
)