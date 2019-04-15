CREATE TABLE [dbo].[Risk] (
    [RiskId]           INT            IDENTITY (1, 1) NOT NULL,
    [RiskName]         NVARCHAR (MAX) NULL,
    [RiskDetail]       NVARCHAR (MAX) NULL,
    [RiskType]         INT            NULL,
    [ExpertSuggestion] INT            NULL,
    [RiskProbability]  INT NULL, 
    [RiskImpact]	   INT NULL, 

    CONSTRAINT [PK_Risk] PRIMARY KEY CLUSTERED ([RiskId] ASC)
);

