CREATE TABLE [dbo].[RiskNews] (
    [RiskNewsId]           INT    IDENTITY (1, 1) NOT NULL,
	[RiskId]               INT    NOT NULL,
    [RiskNewsDetail]       NVARCHAR (MAX) NULL,
    [RiskNewsProbability]  INT NULL, 
    [RiskNewsImpact]	   INT NULL,

    CONSTRAINT [PK_RiskNews] PRIMARY KEY CLUSTERED ([RiskNewsId] ASC),
	CONSTRAINT [FK_RiskNews_Risk] FOREIGN KEY ([RiskId]) REFERENCES [dbo].[Risk] ([RiskId])
);

