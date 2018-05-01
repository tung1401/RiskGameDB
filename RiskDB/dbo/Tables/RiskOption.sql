CREATE TABLE [dbo].[RiskOption] (
    [RiskOptionId]      INT IDENTITY (1, 1) NOT NULL,
    [RiskId]            INT NULL,
    [RiskLevel]         INT NULL,
    [ActionEffectType]  INT NULL,
    [ActionEffectValue] INT NULL,
    [RiskImpact]        INT NULL,
    [RiskPorture]       INT NULL,
    CONSTRAINT [PK_RiskOption] PRIMARY KEY CLUSTERED ([RiskOptionId] ASC),
    CONSTRAINT [FK_RiskOption_Risk] FOREIGN KEY ([RiskId]) REFERENCES [dbo].[Risk] ([RiskId])
);

