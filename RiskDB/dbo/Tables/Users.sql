CREATE TABLE [dbo].[Users] (
    [UserId]    INT            IDENTITY (1, 1) NOT NULL,
	[Id] 		NVARCHAR (128) NULL,
    [FirstName] NVARCHAR (MAX) NULL,
    [LastName]  NVARCHAR (MAX) NULL,
	[Email]     NVARCHAR (MAX) NULL, 
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId] ASC),
	CONSTRAINT [FK_Users_AspNetUsers] FOREIGN KEY ([Id]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

