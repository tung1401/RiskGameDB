
Create Table [dbo].[UserGameRoom](
UserGameRoomId [int] IDENTITY(1,1) NOT NULL,
GameRoomId [int] NOT NULL,
UserId [int] NOT NULL,
PlayerName [Nvarchar](Max),
JobType [int] NULL,
[MoneyValue] [int] not NULL,
[ProjectValue] [int] not Null,
[TeamValue] [int] not Null,
JoinDate DATETIME NULL,
Active [bit] NULL,
GameFinished [bit] NULL

CONSTRAINT [PK_UserGameRoom] PRIMARY KEY CLUSTERED ([UserGameRoomId] ASC),
CONSTRAINT [FK_UserGameRoom_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]),
CONSTRAINT [FK_UserGameRoom_GameRoom] FOREIGN KEY ([GameRoomId]) REFERENCES [dbo].[GameRoom] ([GameRoomId])
)