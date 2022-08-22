USE [CustomerLib_Demin]
GO
CREATE TABLE [dbo].[Notes] (
    [NoteId]     INT IDENTITY (1, 1) NOT NULL PRIMARY KEY,
    [CustomerId] INT NOT NULL,
    [Note]       NVARCHAR (255) NULL,
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId])
);