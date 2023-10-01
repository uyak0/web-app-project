CREATE TABLE [dbo].[Cart] (
    [CartId]      NVARCHAR (3)    NOT NULL,
    [Price]       DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([CartId] ASC)
);

